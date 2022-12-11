// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoListState {
  List<Todo> get todoList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListStateCopyWith<TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res, TodoListState>;
  @useResult
  $Res call({List<Todo> todoList});
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res, $Val extends TodoListState>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoList = null,
  }) {
    return _then(_value.copyWith(
      todoList: null == todoList
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoListStateCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$$_TodoListStateCopyWith(
          _$_TodoListState value, $Res Function(_$_TodoListState) then) =
      __$$_TodoListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo> todoList});
}

/// @nodoc
class __$$_TodoListStateCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res, _$_TodoListState>
    implements _$$_TodoListStateCopyWith<$Res> {
  __$$_TodoListStateCopyWithImpl(
      _$_TodoListState _value, $Res Function(_$_TodoListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoList = null,
  }) {
    return _then(_$_TodoListState(
      todoList: null == todoList
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_TodoListState implements _TodoListState {
  const _$_TodoListState({final List<Todo> todoList = const []})
      : _todoList = todoList;

  final List<Todo> _todoList;
  @override
  @JsonKey()
  List<Todo> get todoList {
    if (_todoList is EqualUnmodifiableListView) return _todoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  String toString() {
    return 'TodoListState(todoList: $todoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoListState &&
            const DeepCollectionEquality().equals(other._todoList, _todoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoListStateCopyWith<_$_TodoListState> get copyWith =>
      __$$_TodoListStateCopyWithImpl<_$_TodoListState>(this, _$identity);
}

abstract class _TodoListState implements TodoListState {
  const factory _TodoListState({final List<Todo> todoList}) = _$_TodoListState;

  @override
  List<Todo> get todoList;
  @override
  @JsonKey(ignore: true)
  _$$_TodoListStateCopyWith<_$_TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}
