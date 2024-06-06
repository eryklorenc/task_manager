// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_task_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditTaskPageState {
  String get taskName => throw _privateConstructorUsedError;
  String get taskDescription => throw _privateConstructorUsedError;
  String get taskOwner => throw _privateConstructorUsedError;
  String get selectedDate => throw _privateConstructorUsedError;
  String get selectedPriority => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTaskPageStateCopyWith<EditTaskPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskPageStateCopyWith<$Res> {
  factory $EditTaskPageStateCopyWith(
          EditTaskPageState value, $Res Function(EditTaskPageState) then) =
      _$EditTaskPageStateCopyWithImpl<$Res, EditTaskPageState>;
  @useResult
  $Res call(
      {String taskName,
      String taskDescription,
      String taskOwner,
      String selectedDate,
      String selectedPriority,
      String errorMessage,
      bool isLoading});
}

/// @nodoc
class _$EditTaskPageStateCopyWithImpl<$Res, $Val extends EditTaskPageState>
    implements $EditTaskPageStateCopyWith<$Res> {
  _$EditTaskPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
    Object? taskDescription = null,
    Object? taskOwner = null,
    Object? selectedDate = null,
    Object? selectedPriority = null,
    Object? errorMessage = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
      taskOwner: null == taskOwner
          ? _value.taskOwner
          : taskOwner // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPriority: null == selectedPriority
          ? _value.selectedPriority
          : selectedPriority // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditTaskPageStateImplCopyWith<$Res>
    implements $EditTaskPageStateCopyWith<$Res> {
  factory _$$EditTaskPageStateImplCopyWith(_$EditTaskPageStateImpl value,
          $Res Function(_$EditTaskPageStateImpl) then) =
      __$$EditTaskPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskName,
      String taskDescription,
      String taskOwner,
      String selectedDate,
      String selectedPriority,
      String errorMessage,
      bool isLoading});
}

/// @nodoc
class __$$EditTaskPageStateImplCopyWithImpl<$Res>
    extends _$EditTaskPageStateCopyWithImpl<$Res, _$EditTaskPageStateImpl>
    implements _$$EditTaskPageStateImplCopyWith<$Res> {
  __$$EditTaskPageStateImplCopyWithImpl(_$EditTaskPageStateImpl _value,
      $Res Function(_$EditTaskPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
    Object? taskDescription = null,
    Object? taskOwner = null,
    Object? selectedDate = null,
    Object? selectedPriority = null,
    Object? errorMessage = null,
    Object? isLoading = null,
  }) {
    return _then(_$EditTaskPageStateImpl(
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
      taskOwner: null == taskOwner
          ? _value.taskOwner
          : taskOwner // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPriority: null == selectedPriority
          ? _value.selectedPriority
          : selectedPriority // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditTaskPageStateImpl implements _EditTaskPageState {
  const _$EditTaskPageStateImpl(
      {this.taskName = '',
      this.taskDescription = '',
      this.taskOwner = '',
      this.selectedDate = '',
      this.selectedPriority = '',
      this.errorMessage = '',
      this.isLoading = false});

  @override
  @JsonKey()
  final String taskName;
  @override
  @JsonKey()
  final String taskDescription;
  @override
  @JsonKey()
  final String taskOwner;
  @override
  @JsonKey()
  final String selectedDate;
  @override
  @JsonKey()
  final String selectedPriority;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'EditTaskPageState(taskName: $taskName, taskDescription: $taskDescription, taskOwner: $taskOwner, selectedDate: $selectedDate, selectedPriority: $selectedPriority, errorMessage: $errorMessage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskPageStateImpl &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.taskDescription, taskDescription) ||
                other.taskDescription == taskDescription) &&
            (identical(other.taskOwner, taskOwner) ||
                other.taskOwner == taskOwner) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedPriority, selectedPriority) ||
                other.selectedPriority == selectedPriority) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskName, taskDescription,
      taskOwner, selectedDate, selectedPriority, errorMessage, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskPageStateImplCopyWith<_$EditTaskPageStateImpl> get copyWith =>
      __$$EditTaskPageStateImplCopyWithImpl<_$EditTaskPageStateImpl>(
          this, _$identity);
}

abstract class _EditTaskPageState implements EditTaskPageState {
  const factory _EditTaskPageState(
      {final String taskName,
      final String taskDescription,
      final String taskOwner,
      final String selectedDate,
      final String selectedPriority,
      final String errorMessage,
      final bool isLoading}) = _$EditTaskPageStateImpl;

  @override
  String get taskName;
  @override
  String get taskDescription;
  @override
  String get taskOwner;
  @override
  String get selectedDate;
  @override
  String get selectedPriority;
  @override
  String get errorMessage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$EditTaskPageStateImplCopyWith<_$EditTaskPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
