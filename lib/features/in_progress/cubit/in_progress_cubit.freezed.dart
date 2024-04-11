// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'in_progress_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InProgressState {
  List<TaskModel> get items => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<DocumentSnapshot<Object?>>? get documents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InProgressStateCopyWith<InProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InProgressStateCopyWith<$Res> {
  factory $InProgressStateCopyWith(
          InProgressState value, $Res Function(InProgressState) then) =
      _$InProgressStateCopyWithImpl<$Res, InProgressState>;
  @useResult
  $Res call(
      {List<TaskModel> items,
      String errorMessage,
      bool isLoading,
      List<DocumentSnapshot<Object?>>? documents});
}

/// @nodoc
class _$InProgressStateCopyWithImpl<$Res, $Val extends InProgressState>
    implements $InProgressStateCopyWith<$Res> {
  _$InProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? documents = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
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
abstract class _$$InProgressStateImplCopyWith<$Res>
    implements $InProgressStateCopyWith<$Res> {
  factory _$$InProgressStateImplCopyWith(_$InProgressStateImpl value,
          $Res Function(_$InProgressStateImpl) then) =
      __$$InProgressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TaskModel> items,
      String errorMessage,
      bool isLoading,
      List<DocumentSnapshot<Object?>>? documents});
}

/// @nodoc
class __$$InProgressStateImplCopyWithImpl<$Res>
    extends _$InProgressStateCopyWithImpl<$Res, _$InProgressStateImpl>
    implements _$$InProgressStateImplCopyWith<$Res> {
  __$$InProgressStateImplCopyWithImpl(
      _$InProgressStateImpl _value, $Res Function(_$InProgressStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? errorMessage = null,
    Object? isLoading = null,
    Object? documents = freezed,
  }) {
    return _then(_$InProgressStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
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

class _$InProgressStateImpl implements _InProgressState {
  const _$InProgressStateImpl(
      {final List<TaskModel> items = const [],
      this.errorMessage = '',
      this.isLoading = false,
      final List<DocumentSnapshot<Object?>>? documents})
      : _items = items,
        _documents = documents;

  final List<TaskModel> _items;
  @override
  @JsonKey()
  List<TaskModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

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
    return 'InProgressState(items: $items, errorMessage: $errorMessage, isLoading: $isLoading, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      errorMessage,
      isLoading,
      const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressStateImplCopyWith<_$InProgressStateImpl> get copyWith =>
      __$$InProgressStateImplCopyWithImpl<_$InProgressStateImpl>(
          this, _$identity);
}

abstract class _InProgressState implements InProgressState {
  const factory _InProgressState(
          {final List<TaskModel> items,
          final String errorMessage,
          final bool isLoading,
          final List<DocumentSnapshot<Object?>>? documents}) =
      _$InProgressStateImpl;

  @override
  List<TaskModel> get items;
  @override
  String get errorMessage;
  @override
  bool get isLoading;
  @override
  List<DocumentSnapshot<Object?>>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$InProgressStateImplCopyWith<_$InProgressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
