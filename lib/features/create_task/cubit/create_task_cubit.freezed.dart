// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_task_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTaskState {
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<DocumentSnapshot<Object?>>? get documents =>
      throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  String get selectedPriority => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTaskStateCopyWith<CreateTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskStateCopyWith<$Res> {
  factory $CreateTaskStateCopyWith(
          CreateTaskState value, $Res Function(CreateTaskState) then) =
      _$CreateTaskStateCopyWithImpl<$Res, CreateTaskState>;
  @useResult
  $Res call(
      {String errorMessage,
      bool isLoading,
      List<DocumentSnapshot<Object?>>? documents,
      DateTime? selectedDate,
      String selectedPriority});
}

/// @nodoc
class _$CreateTaskStateCopyWithImpl<$Res, $Val extends CreateTaskState>
    implements $CreateTaskStateCopyWith<$Res> {
  _$CreateTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? documents = freezed,
    Object? selectedDate = freezed,
    Object? selectedPriority = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Object?>>?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedPriority: null == selectedPriority
          ? _value.selectedPriority
          : selectedPriority // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTaskStateImplCopyWith<$Res>
    implements $CreateTaskStateCopyWith<$Res> {
  factory _$$CreateTaskStateImplCopyWith(_$CreateTaskStateImpl value,
          $Res Function(_$CreateTaskStateImpl) then) =
      __$$CreateTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage,
      bool isLoading,
      List<DocumentSnapshot<Object?>>? documents,
      DateTime? selectedDate,
      String selectedPriority});
}

/// @nodoc
class __$$CreateTaskStateImplCopyWithImpl<$Res>
    extends _$CreateTaskStateCopyWithImpl<$Res, _$CreateTaskStateImpl>
    implements _$$CreateTaskStateImplCopyWith<$Res> {
  __$$CreateTaskStateImplCopyWithImpl(
      _$CreateTaskStateImpl _value, $Res Function(_$CreateTaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? documents = freezed,
    Object? selectedDate = freezed,
    Object? selectedPriority = null,
  }) {
    return _then(_$CreateTaskStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<DocumentSnapshot<Object?>>?,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedPriority: null == selectedPriority
          ? _value.selectedPriority
          : selectedPriority // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateTaskStateImpl implements _CreateTaskState {
  const _$CreateTaskStateImpl(
      {this.errorMessage = '',
      this.isLoading = false,
      final List<DocumentSnapshot<Object?>>? documents,
      this.selectedDate,
      this.selectedPriority = 'Planned'})
      : _documents = documents;

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isLoading;
  final List<DocumentSnapshot<Object?>>? _documents;
  @override
  List<DocumentSnapshot<Object?>>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? selectedDate;
  @override
  @JsonKey()
  final String selectedPriority;

  @override
  String toString() {
    return 'CreateTaskState(errorMessage: $errorMessage, isLoading: $isLoading, documents: $documents, selectedDate: $selectedDate, selectedPriority: $selectedPriority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedPriority, selectedPriority) ||
                other.selectedPriority == selectedPriority));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      isLoading,
      const DeepCollectionEquality().hash(_documents),
      selectedDate,
      selectedPriority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskStateImplCopyWith<_$CreateTaskStateImpl> get copyWith =>
      __$$CreateTaskStateImplCopyWithImpl<_$CreateTaskStateImpl>(
          this, _$identity);
}

abstract class _CreateTaskState implements CreateTaskState {
  const factory _CreateTaskState(
      {final String errorMessage,
      final bool isLoading,
      final List<DocumentSnapshot<Object?>>? documents,
      final DateTime? selectedDate,
      final String selectedPriority}) = _$CreateTaskStateImpl;

  @override
  String get errorMessage;
  @override
  bool get isLoading;
  @override
  List<DocumentSnapshot<Object?>>? get documents;
  @override
  DateTime? get selectedDate;
  @override
  String get selectedPriority;
  @override
  @JsonKey(ignore: true)
  _$$CreateTaskStateImplCopyWith<_$CreateTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
