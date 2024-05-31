import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/app/core/config/enums.dart';
import 'package:task_manager/app/core/theme/app_colors.dart';
import 'package:task_manager/app/core/theme/app_text_theme_extension.dart';
import 'package:task_manager/generated/l10n.dart';

class EditTaskPage extends StatefulWidget {
  final String taskId;

  const EditTaskPage({required this.taskId, Key? key}) : super(key: key);

  @override
  EditTaskPageState createState() => EditTaskPageState();
}

class EditTaskPageState extends State<EditTaskPage> {
  late TextEditingController _taskNameController;
  late TextEditingController _taskDescriptionController;
  late TextEditingController _taskOwnerController;
  late TextEditingController _selectedDateController;
  late String _selectedPriority;

  final _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    _taskNameController = TextEditingController();
    _taskDescriptionController = TextEditingController();
    _taskOwnerController = TextEditingController();
    _selectedDateController = TextEditingController();
    _selectedPriority = '';

    _fetchTask(widget.taskId);
  }

  @override
  void dispose() {
    _taskNameController.dispose();
    _taskDescriptionController.dispose();
    _taskOwnerController.dispose();
    _selectedDateController.dispose();
    super.dispose();
  }

  Future<void> _fetchTask(String taskId) async {
    final task = await _firestore.collection('category').doc(taskId).get();
    _taskNameController.text = task['Name'];
    _taskDescriptionController.text = task['Description'];
    _taskOwnerController.text = task['Owner'];
    _selectedDateController.text = (task['DueDate'] as Timestamp).toDate().toString();
    _selectedPriority = task['Priority'];
    setState(() {});
  }

  Future<void> _editTask(String taskId) async {
    try {
      await _firestore.collection('category').doc(taskId).update({
        'Name': _taskNameController.text,
        'Description': _taskDescriptionController.text,
        'Owner': _taskOwnerController.text,
        'DueDate': Timestamp.fromDate(DateTime.parse(_selectedDateController.text)),
        'Priority': _selectedPriority,
      }).then((_) {
        Navigator.of(context).pop();
      });
    } catch (error) {
      error.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).edit_task,
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
              _selectedDateController.text.isNotEmpty ? _selectedDateController.text.split(' ')[0] : '',
            ),
            const SizedBox(height: 12.0),
            _buildPriorityDropdownButton(context),
            const SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                _editTask(widget.taskId);
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
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String labelText) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        _selectedDateController.text = picked.toString();
      });
    }
  }

  Widget _buildPriorityDropdownButton(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: _selectedPriority.isNotEmpty ? _selectedPriority : TaskPriorities.priorities.first,
      decoration: InputDecoration(
        labelText: S.of(context).task_priority,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.blue),
        ),
      ),
      items: TaskPriorities.priorities.map((priority) {
        return DropdownMenuItem<String>(
          value: priority,
          child: Text(priority),
        );
      }).toList(),
      onChanged: (String? value) {
        setState(() {
          _selectedPriority = value ?? S.of(context).planned;
        });
      },
    );
  }
}
