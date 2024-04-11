import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/generated/l10n.dart';
import 'package:task_manager/features/done/cubit/done_cubit.dart';
import 'package:task_manager/features/planned/cubit/planned_cubit.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DoneCubit>(
          create: (context) => DoneCubit()..loadDocuments(),
        ),
        BlocProvider<PlannedCubit>(
          create: (context) => PlannedCubit()..loadDocuments(),
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
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(S.of(context).task_done(tasksDone)),
                      Text(S.of(context).task_week(tasksDoneThisWeek)),
                      Text(S.of(context).planned_task_stat(plannedTasks)),
                      Text(S.of(context).percentage_task(completedPercentage.toStringAsFixed(2))),
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