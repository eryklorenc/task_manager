part of 'create_task_cubit.dart';

@freezed
class CreateTaskState with _$CreateTaskState {
  const factory CreateTaskState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    List<DocumentSnapshot>? documents,
    DateTime? selectedDate,
    @Default('Planned') String selectedPriority,
    TextEditingController? taskNameController,
    TextEditingController? taskDescriptionController,
    TextEditingController? taskOwnerController,
  }) = _CreateTaskState;
}
