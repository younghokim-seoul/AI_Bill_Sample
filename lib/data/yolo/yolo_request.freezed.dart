// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yolo_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$YoloRequest {
  List<Uint8List> get planes => throw _privateConstructorUsedError;
  List<int> get bytesPerRow => throw _privateConstructorUsedError;
  List<int?> get bytesPerPixel => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  ImageFormatGroup get format => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoloRequestCopyWith<YoloRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoloRequestCopyWith<$Res> {
  factory $YoloRequestCopyWith(
          YoloRequest value, $Res Function(YoloRequest) then) =
      _$YoloRequestCopyWithImpl<$Res, YoloRequest>;
  @useResult
  $Res call(
      {List<Uint8List> planes,
      List<int> bytesPerRow,
      List<int?> bytesPerPixel,
      int width,
      int height,
      ImageFormatGroup format});
}

/// @nodoc
class _$YoloRequestCopyWithImpl<$Res, $Val extends YoloRequest>
    implements $YoloRequestCopyWith<$Res> {
  _$YoloRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planes = null,
    Object? bytesPerRow = null,
    Object? bytesPerPixel = null,
    Object? width = null,
    Object? height = null,
    Object? format = null,
  }) {
    return _then(_value.copyWith(
      planes: null == planes
          ? _value.planes
          : planes // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
      bytesPerRow: null == bytesPerRow
          ? _value.bytesPerRow
          : bytesPerRow // ignore: cast_nullable_to_non_nullable
              as List<int>,
      bytesPerPixel: null == bytesPerPixel
          ? _value.bytesPerPixel
          : bytesPerPixel // ignore: cast_nullable_to_non_nullable
              as List<int?>,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as ImageFormatGroup,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YoloResultImplCopyWith<$Res>
    implements $YoloRequestCopyWith<$Res> {
  factory _$$YoloResultImplCopyWith(
          _$YoloResultImpl value, $Res Function(_$YoloResultImpl) then) =
      __$$YoloResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Uint8List> planes,
      List<int> bytesPerRow,
      List<int?> bytesPerPixel,
      int width,
      int height,
      ImageFormatGroup format});
}

/// @nodoc
class __$$YoloResultImplCopyWithImpl<$Res>
    extends _$YoloRequestCopyWithImpl<$Res, _$YoloResultImpl>
    implements _$$YoloResultImplCopyWith<$Res> {
  __$$YoloResultImplCopyWithImpl(
      _$YoloResultImpl _value, $Res Function(_$YoloResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planes = null,
    Object? bytesPerRow = null,
    Object? bytesPerPixel = null,
    Object? width = null,
    Object? height = null,
    Object? format = null,
  }) {
    return _then(_$YoloResultImpl(
      planes: null == planes
          ? _value._planes
          : planes // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
      bytesPerRow: null == bytesPerRow
          ? _value._bytesPerRow
          : bytesPerRow // ignore: cast_nullable_to_non_nullable
              as List<int>,
      bytesPerPixel: null == bytesPerPixel
          ? _value._bytesPerPixel
          : bytesPerPixel // ignore: cast_nullable_to_non_nullable
              as List<int?>,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as ImageFormatGroup,
    ));
  }
}

/// @nodoc

class _$YoloResultImpl implements _YoloResult {
  const _$YoloResultImpl(
      {required final List<Uint8List> planes,
      required final List<int> bytesPerRow,
      required final List<int?> bytesPerPixel,
      required this.width,
      required this.height,
      required this.format})
      : _planes = planes,
        _bytesPerRow = bytesPerRow,
        _bytesPerPixel = bytesPerPixel;

  final List<Uint8List> _planes;
  @override
  List<Uint8List> get planes {
    if (_planes is EqualUnmodifiableListView) return _planes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_planes);
  }

  final List<int> _bytesPerRow;
  @override
  List<int> get bytesPerRow {
    if (_bytesPerRow is EqualUnmodifiableListView) return _bytesPerRow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytesPerRow);
  }

  final List<int?> _bytesPerPixel;
  @override
  List<int?> get bytesPerPixel {
    if (_bytesPerPixel is EqualUnmodifiableListView) return _bytesPerPixel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytesPerPixel);
  }

  @override
  final int width;
  @override
  final int height;
  @override
  final ImageFormatGroup format;

  @override
  String toString() {
    return 'YoloRequest(planes: $planes, bytesPerRow: $bytesPerRow, bytesPerPixel: $bytesPerPixel, width: $width, height: $height, format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YoloResultImpl &&
            const DeepCollectionEquality().equals(other._planes, _planes) &&
            const DeepCollectionEquality()
                .equals(other._bytesPerRow, _bytesPerRow) &&
            const DeepCollectionEquality()
                .equals(other._bytesPerPixel, _bytesPerPixel) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.format, format) || other.format == format));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_planes),
      const DeepCollectionEquality().hash(_bytesPerRow),
      const DeepCollectionEquality().hash(_bytesPerPixel),
      width,
      height,
      format);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YoloResultImplCopyWith<_$YoloResultImpl> get copyWith =>
      __$$YoloResultImplCopyWithImpl<_$YoloResultImpl>(this, _$identity);
}

abstract class _YoloResult implements YoloRequest {
  const factory _YoloResult(
      {required final List<Uint8List> planes,
      required final List<int> bytesPerRow,
      required final List<int?> bytesPerPixel,
      required final int width,
      required final int height,
      required final ImageFormatGroup format}) = _$YoloResultImpl;

  @override
  List<Uint8List> get planes;
  @override
  List<int> get bytesPerRow;
  @override
  List<int?> get bytesPerPixel;
  @override
  int get width;
  @override
  int get height;
  @override
  ImageFormatGroup get format;
  @override
  @JsonKey(ignore: true)
  _$$YoloResultImplCopyWith<_$YoloResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
