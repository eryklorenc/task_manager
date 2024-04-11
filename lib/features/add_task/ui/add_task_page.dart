import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/app/core/utils/screen_size.dart';
import 'package:task_manager/features/add_task/cubit/add_task_cubit.dart';
import 'package:task_manager/features/create_task/create_task_page.dart';
import 'package:task_manager/generated/l10n.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

final controller = TextEditingController();

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

                  final documents = state.documents;

                  return ListView(
                    children: [
                      for (final document in documents!) ...[
                        Dismissible(
                            key: ValueKey(document.id),
                            onDismissed: (_) {
                              context.read<AddTaskCubit>().deleteDocument(document.id);
                            },
                            child: _buildTask(
                              context,
                              document['Name'],
                              document['Description'],
                              document['Owner'],
                              document['DueDate'].toDate(),
                              document['Priority'],
                            )),
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

Widget _buildTask(
    BuildContext context, String? name, String? description, String? owner, DateTime? dueDate, String? priority) {
  return Container(
    margin: const EdgeInsetsSS.symmetric(horizontal: 5, vertical: 0.3),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(
        color: AppColors.main,
        width: 1,
      ),
    ),
    padding: const EdgeInsetsSS.all(1),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (name != null && name.isNotEmpty)
          Text(
            S.of(context).name(name),
            style: Theme.of(context).xTextTheme.body2,
          ),
        if (description != null && description.isNotEmpty)
          Text(
            S.of(context).description_name(description),
            style: Theme.of(context).xTextTheme.body2,
          ),
        if (owner != null && owner.isNotEmpty)
          Text(
            S.of(context).owner(owner),
            style: Theme.of(context).xTextTheme.body2,
          ),
        if (dueDate != null)
          Text(
            S.of(context).date(DateFormat.yMd().format(dueDate.toLocal())),
            style: Theme.of(context).xTextTheme.body2,
          ),
        if (priority != null && priority.isNotEmpty)
          Text(
            S.of(context).priority(priority),
            style: Theme.of(context).xTextTheme.body2,
          ),
      ],
    ),
  );
}
