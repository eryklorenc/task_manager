part of 'add_task_cubit.dart';

@freezed
class AddTaskState with _$AddTaskState {
  const factory AddTaskState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    List<DocumentSnapshot>? documents,
  }) = _AddTaskState;
}
