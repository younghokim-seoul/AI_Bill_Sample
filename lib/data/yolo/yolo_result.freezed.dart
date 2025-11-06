// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yolo_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YoloResult {
  bool get detected => throw _privateConstructorUsedError;
  String? get base64Image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoloResultCopyWith<YoloResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoloResultCopyWith<$Res> {
  factory $YoloResultCopyWith(
          YoloResult value, $Res Function(YoloResult) then) =
      _$YoloResultCopyWithImpl<$Res, YoloResult>;
  @useResult
  $Res call({bool detected, String? base64Image});
}

/// @nodoc
class _$YoloResultCopyWithImpl<$Res, $Val extends YoloResult>
    implements $YoloResultCopyWith<$Res> {
  _$YoloResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detected = null,
    Object? base64Image = freezed,
  }) {
    return _then(_value.copyWith(
      detected: null == detected
          ? _value.detected
          : detected // ignore: cast_nullable_to_non_nullable
              as bool,
      base64Image: freezed == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YoloResultImplCopyWith<$Res>
    implements $YoloResultCopyWith<$Res> {
  factory _$$YoloResultImplCopyWith(
          _$YoloResultImpl value, $Res Function(_$YoloResultImpl) then) =
      __$$YoloResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool detected, String? base64Image});
}

/// @nodoc
class __$$YoloResultImplCopyWithImpl<$Res>
    extends _$YoloResultCopyWithImpl<$Res, _$YoloResultImpl>
    implements _$$YoloResultImplCopyWith<$Res> {
  __$$YoloResultImplCopyWithImpl(
      _$YoloResultImpl _value, $Res Function(_$YoloResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detected = null,
    Object? base64Image = freezed,
  }) {
    return _then(_$YoloResultImpl(
      detected: null == detected
          ? _value.detected
          : detected // ignore: cast_nullable_to_non_nullable
              as bool,
      base64Image: freezed == base64Image
          ? _value.base64Image
          : base64Image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$YoloResultImpl implements _YoloResult {
  const _$YoloResultImpl({required this.detected, this.base64Image});

  @override
  final bool detected;
  @override
  final String? base64Image;

  @override
  String toString() {
    return 'YoloResult(detected: $detected, base64Image: $base64Image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoloResultImpl &&
            (identical(other.detected, detected) ||
                other.detected == detected) &&
            (identical(other.base64Image, base64Image) ||
                other.base64Image == base64Image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detected, base64Image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YoloResultImplCopyWith<_$YoloResultImpl> get copyWith =>
      __$$YoloResultImplCopyWithImpl<_$YoloResultImpl>(this, _$identity);
}

abstract class _YoloResult implements YoloResult {
  const factory _YoloResult(
      {required final bool detected,
      final String? base64Image}) = _$YoloResultImpl;

  @override
  bool get detected;
  @override
  String? get base64Image;
  @override
  @JsonKey(ignore: true)
  _$$YoloResultImplCopyWith<_$YoloResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
