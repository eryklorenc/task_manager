// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'done_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DoneState {
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<DocumentSnapshot<Object?>>? get documents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoneStateCopyWith<DoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoneStateCopyWith<$Res> {
  factory $DoneStateCopyWith(DoneState value, $Res Function(DoneState) then) =
      _$DoneStateCopyWithImpl<$Res, DoneState>;
  @useResult
  $Res call(
      {String errorMessage,
      bool isLoading,
      List<DocumentSnapshot<Object?>>? documents});
}

/// @nodoc
class _$DoneStateCopyWithImpl<$Res, $Val extends DoneState>
    implements $DoneStateCopyWith<$Res> {
  _$DoneStateCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoneStateImplCopyWith<$Res>
    implements $DoneStateCopyWith<$Res> {
  factory _$$DoneStateImplCopyWith(
          _$DoneStateImpl value, $Res Function(_$DoneStateImpl) then) =
      __$$DoneStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage,
      bool isLoading,
      List<DocumentSnapshot<Object?>>? documents});
}

/// @nodoc
class __$$DoneStateImplCopyWithImpl<$Res>
    extends _$DoneStateCopyWithImpl<$Res, _$DoneStateImpl>
    implements _$$DoneStateImplCopyWith<$Res> {
  __$$DoneStateImplCopyWithImpl(
      _$DoneStateImpl _value, $Res Function(_$DoneStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? documents = freezed,
  }) {
    return _then(_$DoneStateImpl(
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
    ));
  }
}

/// @nodoc

class _$DoneStateImpl implements _DoneState {
  const _$DoneStateImpl(
      {this.errorMessage = '',
      this.isLoading = false,
      final List<DocumentSnapshot<Object?>>? documents})
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
  String toString() {
    return 'DoneState(errorMessage: $errorMessage, isLoading: $isLoading, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, isLoading,
      const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneStateImplCopyWith<_$DoneStateImpl> get copyWith =>
      __$$DoneStateImplCopyWithImpl<_$DoneStateImpl>(this, _$identity);
}

abstract class _DoneState implements DoneState {
  const factory _DoneState(
      {final String errorMessage,
      final bool isLoading,
      final List<DocumentSnapshot<Object?>>? documents}) = _$DoneStateImpl;

  @override
  String get errorMessage;
  @override
  bool get isLoading;
  @override
  List<DocumentSnapshot<Object?>>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$DoneStateImplCopyWith<_$DoneStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
