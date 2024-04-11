part of 'in_progress_cubit.dart';

@freezed
class InProgressState with _$InProgressState {
  const factory InProgressState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    List<DocumentSnapshot>? documents,
  }) = _InProgressState;
}
