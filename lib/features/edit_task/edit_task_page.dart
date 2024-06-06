import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/app/core/config/enums.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/features/edit_task/cubit/edit_task_page_cubit.dart';
import 'package:task_manager/features/edit_task/cubit/edit_task_page_state.dart';
import 'package:task_manager/generated/l10n.dart';

class EditTaskPage extends StatelessWidget {
  final String taskId;

  const EditTaskPage({required this.taskId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => EditTaskPageCubit()..fetchTask(taskId),
      child: _EditTaskPageView(taskId: taskId),
    );
  }
}

class _EditTaskPageView extends StatelessWidget {
  final String taskId;

  const _EditTaskPageView({required this.taskId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).edit_task,
          style: Theme.of(context).xTextTheme.body1,
        ),
      ),
      body: BlocBuilder<EditTaskPageCubit, EditTaskPageState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTextField(
                  context,
                  initialValue: state.taskName,
                  labelText: S.of(context).task_name,
                  onChanged: (value) => context.read<EditTaskPageCubit>().updateTaskName(value),
                ),
                const SizedBox(height: 12.0),
                _buildTextField(
                  context,
                  initialValue: state.taskDescription,
                  labelText: S.of(context).task_description,
                  onChanged: (value) => context.read<EditTaskPageCubit>().updateTaskDescription(value),
                ),
                const SizedBox(height: 12.0),
                _buildTextField(
                  context,
                  initialValue: state.taskOwner,
                  labelText: S.of(context).task_owner,
                  onChanged: (value) => context.read<EditTaskPageCubit>().updateTaskOwner(value),
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.main,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    S.of(context).select_due_date,
                    style: Theme.of(context).xTextTheme.body4,
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(
                  state.selectedDate.isNotEmpty ? state.selectedDate.split(' ')[0] : '',
                ),
                const SizedBox(height: 12.0),
                _buildPriorityDropdownButton(context, state),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  onPressed: () {
                    context.read<EditTaskPageCubit>().editTask(taskId);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.main,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    S.of(context).save,
                    style: Theme.of(context).xTextTheme.body3,
                  ),
                ),
                if (state.errorMessage.isNotEmpty)
                  Text(
                    state.errorMessage,
                    style: const TextStyle(color: AppColors.error),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextField(BuildContext context,
      {required String initialValue, required String labelText, required Function(String) onChanged}) {
    return TextField(
      controller: TextEditingController(text: initialValue),
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
      onChanged: onChanged,
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && context.mounted) {
      context.read<EditTaskPageCubit>().updateSelectedDate(picked.toString());
    }
  }

  Widget _buildPriorityDropdownButton(BuildContext context, EditTaskPageState state) {
    return DropdownButtonFormField<String>(
      value: state.selectedPriority.isNotEmpty ? state.selectedPriority : TaskPriorities.priorities.first,
      decoration: InputDecoration(
        labelText: S.of(context).task_priority,
        filled: true,
        fillColor: AppColors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      items: TaskPriorities.priorities.map((priority) {
        return DropdownMenuItem<String>(
          value: priority,
          child: Text(priority),
        );
      }).toList(),
      onChanged: (String? value) {
        if (value != null) {
          context.read<EditTaskPageCubit>().updateSelectedPriority(value);
        }
      },
    );
  }
}
