import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_task_page_state.freezed.dart';

@freezed
class EditTaskPageState with _$EditTaskPageState {
  const factory EditTaskPageState({
    @Default('') String taskName,
    @Default('') String taskDescription,
    @Default('') String taskOwner,
    @Default('') String selectedDate,
    @Default('') String selectedPriority,
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
  }) = _EditTaskPageState;
}
