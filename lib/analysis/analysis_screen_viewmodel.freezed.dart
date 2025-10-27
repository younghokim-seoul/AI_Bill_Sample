// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_screen_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnalysisUiState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalysisUiStateCopyWith<AnalysisUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisUiStateCopyWith<$Res> {
  factory $AnalysisUiStateCopyWith(
          AnalysisUiState value, $Res Function(AnalysisUiState) then) =
      _$AnalysisUiStateCopyWithImpl<$Res, AnalysisUiState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$AnalysisUiStateCopyWithImpl<$Res, $Val extends AnalysisUiState>
    implements $AnalysisUiStateCopyWith<$Res> {
  _$AnalysisUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalysisUiStateImplCopyWith<$Res>
    implements $AnalysisUiStateCopyWith<$Res> {
  factory _$$AnalysisUiStateImplCopyWith(_$AnalysisUiStateImpl value,
          $Res Function(_$AnalysisUiStateImpl) then) =
      __$$AnalysisUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$AnalysisUiStateImplCopyWithImpl<$Res>
    extends _$AnalysisUiStateCopyWithImpl<$Res, _$AnalysisUiStateImpl>
    implements _$$AnalysisUiStateImplCopyWith<$Res> {
  __$$AnalysisUiStateImplCopyWithImpl(
      _$AnalysisUiStateImpl _value, $Res Function(_$AnalysisUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$AnalysisUiStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AnalysisUiStateImpl implements _AnalysisUiState {
  _$AnalysisUiStateImpl({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AnalysisUiState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisUiStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisUiStateImplCopyWith<_$AnalysisUiStateImpl> get copyWith =>
      __$$AnalysisUiStateImplCopyWithImpl<_$AnalysisUiStateImpl>(
          this, _$identity);
}

abstract class _AnalysisUiState implements AnalysisUiState {
  factory _AnalysisUiState({required final bool isLoading}) =
      _$AnalysisUiStateImpl;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$AnalysisUiStateImplCopyWith<_$AnalysisUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
