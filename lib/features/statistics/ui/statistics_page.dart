import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/injection_container.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';
import 'package:task_manager/generated/l10n.dart';
import 'package:task_manager/features/done/cubit/done_cubit.dart';
import 'package:task_manager/features/planned/cubit/planned_cubit.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DoneCubit>(
          create: (context) => getIt<DoneCubit>()..loadDocuments(),
        ),
        BlocProvider<PlannedCubit>(
          create: (context) => getIt<PlannedCubit>()..loadDocuments(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).statistics,
            style: Theme.of(context).xTextTheme.body1,
          ),
        ),
        body: BlocBuilder<DoneCubit, DoneState>(
          builder: (context, doneState) {
            return BlocBuilder<PlannedCubit, PlannedState>(
              builder: (context, plannedState) {
                final int tasksDone = doneState.items.length;
                final int tasksDoneThisWeek = doneState.items
                    .where((task) => task.dueDate.isAfter(DateTime.now().subtract(const Duration(days: 7))))
                    .length;

                final int plannedTasks = plannedState.items.length;
                final double completedPercentage = (tasksDone / (plannedTasks + tasksDone)) * 100;

                return Padding(
                  padding: const EdgeInsetsSS.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(S.of(context).task_done(tasksDone)),
                      Text(S.of(context).task_week(tasksDoneThisWeek)),
                      Text(S.of(context).planned_task_stat(plannedTasks)),
                      Text(S.of(context).percentage_task(completedPercentage.toStringAsFixed(2))),
                      Row(
                        children: [
                          const Icon(Icons.location_city),
                          const SizedBox(width: 5),
                          Text(
                            plannedState.address,
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.main),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
