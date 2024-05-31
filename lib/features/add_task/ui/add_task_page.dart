import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';
import 'package:task_manager/data/datasources/notification/notification_datasources.dart';
import 'package:task_manager/features/add_task/cubit/add_task_cubit.dart';
import 'package:task_manager/features/add_task/widgets/task_widget.dart';
import 'package:task_manager/features/create_task/ui/create_task_page.dart';
import 'package:task_manager/generated/l10n.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

final controller = TextEditingController();

bool isSelected = false;

@override
void initState() {
  NotificationDataSources.askForNotificationPermission();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildOptionsLabel(context),
          Expanded(
            child: BlocProvider(
              create: (context) => AddTaskCubit()..loadTasks(),
              child: BlocBuilder<AddTaskCubit, AddTaskState>(
                builder: (context, state) {
                  if (state.errorMessage.isNotEmpty) {
                    return Center(child: Text(S.of(context).error));
                  }
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final item = state.items;

                  return ListView(
                    children: [
                      for (final item in item) ...[
                        Dismissible(
                          key: ValueKey(item.id),
                          onDismissed: (_) {
                            context.read<AddTaskCubit>().deleteDocument(item.id);
                          },
                          child: Column(
                            children: [
                              taskWidget(
                                context,
                                item.name,
                                item.description,
                                item.owner,
                                item.dueDate,
                                item.priority,
                                item.id,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  NotificationDataSources.sendInstantNotification(
                                    title: "Task Due Soon",
                                    body: 'Your task "${item.name}" is due tomorrow!',
                                    payload: "Task ID: ${item.id}",
                                  );
                                },
                                child: const Text('Notify About This Task'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsSS.only(top: 2, left: 5, right: 5),
            child: Text(
              S.of(context).description,
              style: Theme.of(context).xTextTheme.body5,
            ),
          ),
          Padding(
            padding: const EdgeInsetsSS.only(top: 2, left: 5),
            child: ContainerSS(
              height: 6.81,
              width: 88.89,
              margin: const EdgeInsetsSS.only(top: 2, bottom: 2),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.main,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  S.of(context).create,
                  style: Theme.of(context).xTextTheme.display0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateTaskPage(),
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ),
              const Text("Get notification every minute"),
              const Spacer(),
              Switch(
                value: isSelected,
                onChanged: (value) {
                  isSelected = !isSelected;
                  if (isSelected) {
                    NotificationDataSources.sendPeriodicNotification(
                      title: "Test title 2",
                      body: "Test body 2",
                      payload: "Test payload 2",
                    );
                  } else {
                    NotificationDataSources.cancelPeriodicNotification();
                  }
                  setState(() {});
                },
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildRow({Widget? child}) {
  return ContainerSS(
    margin: const EdgeInsetsSS.only(top: 2, left: 5),
    child: child,
  );
}

Widget _buildOptionsLabel(BuildContext context) {
  return _buildRow(
    child: Padding(
      padding: const EdgeInsetsSS.only(bottom: 1),
      child: Text(
        S.of(context).all_tasks,
        style: Theme.of(context).xTextTheme.body1,
      ),
    ),
  );
}
