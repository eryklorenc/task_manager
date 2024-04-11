part of 'done_cubit.dart';

@freezed
class DoneState with _$DoneState {
  const factory DoneState({
    @Default('') String errorMessage,
    @Default(false) bool isLoading,
    List<DocumentSnapshot>? documents,
  }) = _DoneState;
}
