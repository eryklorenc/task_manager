import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/app/core/config/enums.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/features/create_task/cubit/create_task_cubit.dart';
import 'package:task_manager/generated/l10n.dart';

class CreateTaskPage extends StatefulWidget {
  const CreateTaskPage({Key? key}) : super(key: key);

  @override
  CreateTaskPageState createState() => CreateTaskPageState();
}

class CreateTaskPageState extends State<CreateTaskPage> {
  late TextEditingController _taskNameController;
  late TextEditingController _taskDescriptionController;
  late TextEditingController _taskOwnerController;

  @override
  void initState() {
    super.initState();
    _taskNameController = TextEditingController();
    _taskDescriptionController = TextEditingController();
    _taskOwnerController = TextEditingController();
  }

  @override
  void dispose() {
    _taskNameController.dispose();
    _taskDescriptionController.dispose();
    _taskOwnerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateTaskCubit(),
      child: BlocBuilder<CreateTaskCubit, CreateTaskState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                S.of(context).add_task,
                style: Theme.of(context).xTextTheme.body1,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextField(_taskNameController, S.of(context).task_name),
                  const SizedBox(height: 12.0),
                  _buildTextField(_taskDescriptionController, S.of(context).task_description),
                  const SizedBox(height: 12.0),
                  _buildTextField(_taskOwnerController, S.of(context).task_owner),
                  const SizedBox(height: 12.0),
                  _buildPriorityDropdownButton(context, state),
                  const SizedBox(height: 12.0),
                  ElevatedButton(
                    onPressed: () => context.read<CreateTaskCubit>().selectDate(context),
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
                  Text((state.selectedDate?.toLocal() ?? DateTime.now()).toString().split(' ')[0]),
                  const SizedBox(height: 12.0),
                  ElevatedButton(
                    onPressed: () {
                      if (state.selectedDate != null && _taskNameController.text.isNotEmpty) {
                        context
                            .read<CreateTaskCubit>()
                            .addTask(
                              taskName: _taskNameController.text,
                              taskDescription: _taskDescriptionController.text,
                              taskOwner: _taskOwnerController.text,
                              dueDate: state.selectedDate!,
                              priority: state.selectedPriority,
                            )
                            .then((_) {
                          Navigator.of(context).pop();
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(S.of(context).snackbar)),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.main,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      S.of(context).add_task,
                      style: Theme.of(context).xTextTheme.body4,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String labelText) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: AppColors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: AppColors.blue),
        ),
      ),
    );
  }

  Widget _buildPriorityDropdownButton(BuildContext context, CreateTaskState state) {
    return DropdownButtonFormField<String>(
      value: state.selectedPriority,
      decoration: InputDecoration(
        labelText: S.of(context).task_priority,
        filled: true,
        fillColor: AppColors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: AppColors.blue),
        ),
      ),
      items: TaskPriorities.priorities.map((priority) {
        return DropdownMenuItem<String>(
          value: priority,
          child: Text(priority),
        );
      }).toList(),
      onChanged: (String? value) {
        context.read<CreateTaskCubit>().updatePriority(value ?? S.of(context).planned);
      },
    );
  }
}
