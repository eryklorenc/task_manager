part of 'planned_cubit.dart';

@freezed
class PlannedState with _$PlannedState {
  const factory PlannedState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    List<DocumentSnapshot>? documents,
  }) = _PlannedState;
}
