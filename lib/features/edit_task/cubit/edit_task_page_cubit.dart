import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'edit_task_page_state.dart';

class EditTaskPageCubit extends Cubit<EditTaskPageState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  EditTaskPageCubit() : super(const EditTaskPageState());

  Future<void> fetchTask(String taskId) async {
    try {
      emit(state.copyWith(isLoading: true));
      final task = await _firestore.collection('category').doc(taskId).get();
      emit(state.copyWith(
        taskName: task['Name'],
        taskDescription: task['Description'],
        taskOwner: task['Owner'],
        selectedDate: (task['DueDate'] as Timestamp).toDate().toString(),
        selectedPriority: task['Priority'],
        isLoading: false,
      ));
    } catch (error) {
      emit(state.copyWith(
        errorMessage: error.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> editTask(String taskId) async {
    try {
      emit(state.copyWith(isLoading: true));
      await _firestore.collection('category').doc(taskId).update({
        'Name': state.taskName,
        'Description': state.taskDescription,
        'Owner': state.taskOwner,
        'DueDate': Timestamp.fromDate(DateTime.parse(state.selectedDate)),
        'Priority': state.selectedPriority,
      });
      emit(state.copyWith(isLoading: false));
    } catch (error) {
      emit(state.copyWith(
        errorMessage: error.toString(),
        isLoading: false,
      ));
    }
  }

  void updateTaskName(String taskName) => emit(state.copyWith(taskName: taskName));
  void updateTaskDescription(String taskDescription) => emit(state.copyWith(taskDescription: taskDescription));
  void updateTaskOwner(String taskOwner) => emit(state.copyWith(taskOwner: taskOwner));
  void updateSelectedDate(String selectedDate) => emit(state.copyWith(selectedDate: selectedDate));
  void updateSelectedPriority(String selectedPriority) => emit(state.copyWith(selectedPriority: selectedPriority));
}
