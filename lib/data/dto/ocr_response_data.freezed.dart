// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocr_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OcrResponse _$OcrResponseFromJson(Map<String, dynamic> json) {
  return _OcrResponse.fromJson(json);
}

/// @nodoc
mixin _$OcrResponse {
  String get version => throw _privateConstructorUsedError;
  String get requestId => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;
  List<OcrImage> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OcrResponseCopyWith<OcrResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OcrResponseCopyWith<$Res> {
  factory $OcrResponseCopyWith(
          OcrResponse value, $Res Function(OcrResponse) then) =
      _$OcrResponseCopyWithImpl<$Res, OcrResponse>;
  @useResult
  $Res call(
      {String version, String requestId, int timestamp, List<OcrImage> images});
}

/// @nodoc
class _$OcrResponseCopyWithImpl<$Res, $Val extends OcrResponse>
    implements $OcrResponseCopyWith<$Res> {
  _$OcrResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? requestId = null,
    Object? timestamp = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<OcrImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OcrResponseImplCopyWith<$Res>
    implements $OcrResponseCopyWith<$Res> {
  factory _$$OcrResponseImplCopyWith(
          _$OcrResponseImpl value, $Res Function(_$OcrResponseImpl) then) =
      __$$OcrResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version, String requestId, int timestamp, List<OcrImage> images});
}

/// @nodoc
class __$$OcrResponseImplCopyWithImpl<$Res>
    extends _$OcrResponseCopyWithImpl<$Res, _$OcrResponseImpl>
    implements _$$OcrResponseImplCopyWith<$Res> {
  __$$OcrResponseImplCopyWithImpl(
      _$OcrResponseImpl _value, $Res Function(_$OcrResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? requestId = null,
    Object? timestamp = null,
    Object? images = null,
  }) {
    return _then(_$OcrResponseImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<OcrImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OcrResponseImpl implements _OcrResponse {
  const _$OcrResponseImpl(
      {required this.version,
      required this.requestId,
      required this.timestamp,
      required final List<OcrImage> images})
      : _images = images;

  factory _$OcrResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OcrResponseImplFromJson(json);

  @override
  final String version;
  @override
  final String requestId;
  @override
  final int timestamp;
  final List<OcrImage> _images;
  @override
  List<OcrImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'OcrResponse(version: $version, requestId: $requestId, timestamp: $timestamp, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OcrResponseImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version, requestId, timestamp,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OcrResponseImplCopyWith<_$OcrResponseImpl> get copyWith =>
      __$$OcrResponseImplCopyWithImpl<_$OcrResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OcrResponseImplToJson(
      this,
    );
  }
}

abstract class _OcrResponse implements OcrResponse {
  const factory _OcrResponse(
      {required final String version,
      required final String requestId,
      required final int timestamp,
      required final List<OcrImage> images}) = _$OcrResponseImpl;

  factory _OcrResponse.fromJson(Map<String, dynamic> json) =
      _$OcrResponseImpl.fromJson;

  @override
  String get version;
  @override
  String get requestId;
  @override
  int get timestamp;
  @override
  List<OcrImage> get images;
  @override
  @JsonKey(ignore: true)
  _$$OcrResponseImplCopyWith<_$OcrResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OcrImage _$OcrImageFromJson(Map<String, dynamic> json) {
  return _OcrImage.fromJson(json);
}

/// @nodoc
mixin _$OcrImage {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get inferResult => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ValidationResult get validationResult => throw _privateConstructorUsedError;
  ConvertedImageInfo get convertedImageInfo =>
      throw _privateConstructorUsedError;
  List<FieldDto> get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OcrImageCopyWith<OcrImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OcrImageCopyWith<$Res> {
  factory $OcrImageCopyWith(OcrImage value, $Res Function(OcrImage) then) =
      _$OcrImageCopyWithImpl<$Res, OcrImage>;
  @useResult
  $Res call(
      {String uid,
      String name,
      String inferResult,
      String message,
      ValidationResult validationResult,
      ConvertedImageInfo convertedImageInfo,
      List<FieldDto> fields});

  $ValidationResultCopyWith<$Res> get validationResult;
  $ConvertedImageInfoCopyWith<$Res> get convertedImageInfo;
}

/// @nodoc
class _$OcrImageCopyWithImpl<$Res, $Val extends OcrImage>
    implements $OcrImageCopyWith<$Res> {
  _$OcrImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? inferResult = null,
    Object? message = null,
    Object? validationResult = null,
    Object? convertedImageInfo = null,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      inferResult: null == inferResult
          ? _value.inferResult
          : inferResult // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      validationResult: null == validationResult
          ? _value.validationResult
          : validationResult // ignore: cast_nullable_to_non_nullable
              as ValidationResult,
      convertedImageInfo: null == convertedImageInfo
          ? _value.convertedImageInfo
          : convertedImageInfo // ignore: cast_nullable_to_non_nullable
              as ConvertedImageInfo,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidationResultCopyWith<$Res> get validationResult {
    return $ValidationResultCopyWith<$Res>(_value.validationResult, (value) {
      return _then(_value.copyWith(validationResult: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConvertedImageInfoCopyWith<$Res> get convertedImageInfo {
    return $ConvertedImageInfoCopyWith<$Res>(_value.convertedImageInfo,
        (value) {
      return _then(_value.copyWith(convertedImageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OcrImageImplCopyWith<$Res>
    implements $OcrImageCopyWith<$Res> {
  factory _$$OcrImageImplCopyWith(
          _$OcrImageImpl value, $Res Function(_$OcrImageImpl) then) =
      __$$OcrImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      String inferResult,
      String message,
      ValidationResult validationResult,
      ConvertedImageInfo convertedImageInfo,
      List<FieldDto> fields});

  @override
  $ValidationResultCopyWith<$Res> get validationResult;
  @override
  $ConvertedImageInfoCopyWith<$Res> get convertedImageInfo;
}

/// @nodoc
class __$$OcrImageImplCopyWithImpl<$Res>
    extends _$OcrImageCopyWithImpl<$Res, _$OcrImageImpl>
    implements _$$OcrImageImplCopyWith<$Res> {
  __$$OcrImageImplCopyWithImpl(
      _$OcrImageImpl _value, $Res Function(_$OcrImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? inferResult = null,
    Object? message = null,
    Object? validationResult = null,
    Object? convertedImageInfo = null,
    Object? fields = null,
  }) {
    return _then(_$OcrImageImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      inferResult: null == inferResult
          ? _value.inferResult
          : inferResult // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      validationResult: null == validationResult
          ? _value.validationResult
          : validationResult // ignore: cast_nullable_to_non_nullable
              as ValidationResult,
      convertedImageInfo: null == convertedImageInfo
          ? _value.convertedImageInfo
          : convertedImageInfo // ignore: cast_nullable_to_non_nullable
              as ConvertedImageInfo,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FieldDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OcrImageImpl implements _OcrImage {
  const _$OcrImageImpl(
      {required this.uid,
      required this.name,
      required this.inferResult,
      required this.message,
      required this.validationResult,
      required this.convertedImageInfo,
      required final List<FieldDto> fields})
      : _fields = fields;

  factory _$OcrImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OcrImageImplFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String inferResult;
  @override
  final String message;
  @override
  final ValidationResult validationResult;
  @override
  final ConvertedImageInfo convertedImageInfo;
  final List<FieldDto> _fields;
  @override
  List<FieldDto> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'OcrImage(uid: $uid, name: $name, inferResult: $inferResult, message: $message, validationResult: $validationResult, convertedImageInfo: $convertedImageInfo, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OcrImageImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.inferResult, inferResult) ||
                other.inferResult == inferResult) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.validationResult, validationResult) ||
                other.validationResult == validationResult) &&
            (identical(other.convertedImageInfo, convertedImageInfo) ||
                other.convertedImageInfo == convertedImageInfo) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      name,
      inferResult,
      message,
      validationResult,
      convertedImageInfo,
      const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OcrImageImplCopyWith<_$OcrImageImpl> get copyWith =>
      __$$OcrImageImplCopyWithImpl<_$OcrImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OcrImageImplToJson(
      this,
    );
  }
}

abstract class _OcrImage implements OcrImage {
  const factory _OcrImage(
      {required final String uid,
      required final String name,
      required final String inferResult,
      required final String message,
      required final ValidationResult validationResult,
      required final ConvertedImageInfo convertedImageInfo,
      required final List<FieldDto> fields}) = _$OcrImageImpl;

  factory _OcrImage.fromJson(Map<String, dynamic> json) =
      _$OcrImageImpl.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get inferResult;
  @override
  String get message;
  @override
  ValidationResult get validationResult;
  @override
  ConvertedImageInfo get convertedImageInfo;
  @override
  List<FieldDto> get fields;
  @override
  @JsonKey(ignore: true)
  _$$OcrImageImplCopyWith<_$OcrImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidationResult _$ValidationResultFromJson(Map<String, dynamic> json) {
  return _ValidationResult.fromJson(json);
}

/// @nodoc
mixin _$ValidationResult {
  String get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidationResultCopyWith<ValidationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationResultCopyWith<$Res> {
  factory $ValidationResultCopyWith(
          ValidationResult value, $Res Function(ValidationResult) then) =
      _$ValidationResultCopyWithImpl<$Res, ValidationResult>;
  @useResult
  $Res call({String result});
}

/// @nodoc
class _$ValidationResultCopyWithImpl<$Res, $Val extends ValidationResult>
    implements $ValidationResultCopyWith<$Res> {
  _$ValidationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationResultImplCopyWith<$Res>
    implements $ValidationResultCopyWith<$Res> {
  factory _$$ValidationResultImplCopyWith(_$ValidationResultImpl value,
          $Res Function(_$ValidationResultImpl) then) =
      __$$ValidationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String result});
}

/// @nodoc
class __$$ValidationResultImplCopyWithImpl<$Res>
    extends _$ValidationResultCopyWithImpl<$Res, _$ValidationResultImpl>
    implements _$$ValidationResultImplCopyWith<$Res> {
  __$$ValidationResultImplCopyWithImpl(_$ValidationResultImpl _value,
      $Res Function(_$ValidationResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ValidationResultImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationResultImpl implements _ValidationResult {
  const _$ValidationResultImpl({required this.result});

  factory _$ValidationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationResultImplFromJson(json);

  @override
  final String result;

  @override
  String toString() {
    return 'ValidationResult(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationResultImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationResultImplCopyWith<_$ValidationResultImpl> get copyWith =>
      __$$ValidationResultImplCopyWithImpl<_$ValidationResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationResultImplToJson(
      this,
    );
  }
}

abstract class _ValidationResult implements ValidationResult {
  const factory _ValidationResult({required final String result}) =
      _$ValidationResultImpl;

  factory _ValidationResult.fromJson(Map<String, dynamic> json) =
      _$ValidationResultImpl.fromJson;

  @override
  String get result;
  @override
  @JsonKey(ignore: true)
  _$$ValidationResultImplCopyWith<_$ValidationResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConvertedImageInfo _$ConvertedImageInfoFromJson(Map<String, dynamic> json) {
  return _ConvertedImageInfo.fromJson(json);
}

/// @nodoc
mixin _$ConvertedImageInfo {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  bool get longImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConvertedImageInfoCopyWith<ConvertedImageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertedImageInfoCopyWith<$Res> {
  factory $ConvertedImageInfoCopyWith(
          ConvertedImageInfo value, $Res Function(ConvertedImageInfo) then) =
      _$ConvertedImageInfoCopyWithImpl<$Res, ConvertedImageInfo>;
  @useResult
  $Res call({int width, int height, int pageIndex, bool longImage});
}

/// @nodoc
class _$ConvertedImageInfoCopyWithImpl<$Res, $Val extends ConvertedImageInfo>
    implements $ConvertedImageInfoCopyWith<$Res> {
  _$ConvertedImageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? pageIndex = null,
    Object? longImage = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      longImage: null == longImage
          ? _value.longImage
          : longImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConvertedImageInfoImplCopyWith<$Res>
    implements $ConvertedImageInfoCopyWith<$Res> {
  factory _$$ConvertedImageInfoImplCopyWith(_$ConvertedImageInfoImpl value,
          $Res Function(_$ConvertedImageInfoImpl) then) =
      __$$ConvertedImageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height, int pageIndex, bool longImage});
}

/// @nodoc
class __$$ConvertedImageInfoImplCopyWithImpl<$Res>
    extends _$ConvertedImageInfoCopyWithImpl<$Res, _$ConvertedImageInfoImpl>
    implements _$$ConvertedImageInfoImplCopyWith<$Res> {
  __$$ConvertedImageInfoImplCopyWithImpl(_$ConvertedImageInfoImpl _value,
      $Res Function(_$ConvertedImageInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? pageIndex = null,
    Object? longImage = null,
  }) {
    return _then(_$ConvertedImageInfoImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      longImage: null == longImage
          ? _value.longImage
          : longImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConvertedImageInfoImpl implements _ConvertedImageInfo {
  const _$ConvertedImageInfoImpl(
      {required this.width,
      required this.height,
      required this.pageIndex,
      required this.longImage});

  factory _$ConvertedImageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConvertedImageInfoImplFromJson(json);

  @override
  final int width;
  @override
  final int height;
  @override
  final int pageIndex;
  @override
  final bool longImage;

  @override
  String toString() {
    return 'ConvertedImageInfo(width: $width, height: $height, pageIndex: $pageIndex, longImage: $longImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertedImageInfoImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.longImage, longImage) ||
                other.longImage == longImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, width, height, pageIndex, longImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertedImageInfoImplCopyWith<_$ConvertedImageInfoImpl> get copyWith =>
      __$$ConvertedImageInfoImplCopyWithImpl<_$ConvertedImageInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConvertedImageInfoImplToJson(
      this,
    );
  }
}

abstract class _ConvertedImageInfo implements ConvertedImageInfo {
  const factory _ConvertedImageInfo(
      {required final int width,
      required final int height,
      required final int pageIndex,
      required final bool longImage}) = _$ConvertedImageInfoImpl;

  factory _ConvertedImageInfo.fromJson(Map<String, dynamic> json) =
      _$ConvertedImageInfoImpl.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  int get pageIndex;
  @override
  bool get longImage;
  @override
  @JsonKey(ignore: true)
  _$$ConvertedImageInfoImplCopyWith<_$ConvertedImageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldDto _$FieldDtoFromJson(Map<String, dynamic> json) {
  return _FieldDto.fromJson(json);
}

/// @nodoc
mixin _$FieldDto {
  String? get valueType => throw _privateConstructorUsedError;
  BoundingPolyDto? get boundingPoly => throw _privateConstructorUsedError;
  String? get inferText => throw _privateConstructorUsedError;
  double? get inferConfidence => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get lineBreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldDtoCopyWith<FieldDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldDtoCopyWith<$Res> {
  factory $FieldDtoCopyWith(FieldDto value, $Res Function(FieldDto) then) =
      _$FieldDtoCopyWithImpl<$Res, FieldDto>;
  @useResult
  $Res call(
      {String? valueType,
      BoundingPolyDto? boundingPoly,
      String? inferText,
      double? inferConfidence,
      String? type,
      bool? lineBreak});

  $BoundingPolyDtoCopyWith<$Res>? get boundingPoly;
}

/// @nodoc
class _$FieldDtoCopyWithImpl<$Res, $Val extends FieldDto>
    implements $FieldDtoCopyWith<$Res> {
  _$FieldDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueType = freezed,
    Object? boundingPoly = freezed,
    Object? inferText = freezed,
    Object? inferConfidence = freezed,
    Object? type = freezed,
    Object? lineBreak = freezed,
  }) {
    return _then(_value.copyWith(
      valueType: freezed == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String?,
      boundingPoly: freezed == boundingPoly
          ? _value.boundingPoly
          : boundingPoly // ignore: cast_nullable_to_non_nullable
              as BoundingPolyDto?,
      inferText: freezed == inferText
          ? _value.inferText
          : inferText // ignore: cast_nullable_to_non_nullable
              as String?,
      inferConfidence: freezed == inferConfidence
          ? _value.inferConfidence
          : inferConfidence // ignore: cast_nullable_to_non_nullable
              as double?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      lineBreak: freezed == lineBreak
          ? _value.lineBreak
          : lineBreak // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoundingPolyDtoCopyWith<$Res>? get boundingPoly {
    if (_value.boundingPoly == null) {
      return null;
    }

    return $BoundingPolyDtoCopyWith<$Res>(_value.boundingPoly!, (value) {
      return _then(_value.copyWith(boundingPoly: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FieldDtoImplCopyWith<$Res>
    implements $FieldDtoCopyWith<$Res> {
  factory _$$FieldDtoImplCopyWith(
          _$FieldDtoImpl value, $Res Function(_$FieldDtoImpl) then) =
      __$$FieldDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? valueType,
      BoundingPolyDto? boundingPoly,
      String? inferText,
      double? inferConfidence,
      String? type,
      bool? lineBreak});

  @override
  $BoundingPolyDtoCopyWith<$Res>? get boundingPoly;
}

/// @nodoc
class __$$FieldDtoImplCopyWithImpl<$Res>
    extends _$FieldDtoCopyWithImpl<$Res, _$FieldDtoImpl>
    implements _$$FieldDtoImplCopyWith<$Res> {
  __$$FieldDtoImplCopyWithImpl(
      _$FieldDtoImpl _value, $Res Function(_$FieldDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueType = freezed,
    Object? boundingPoly = freezed,
    Object? inferText = freezed,
    Object? inferConfidence = freezed,
    Object? type = freezed,
    Object? lineBreak = freezed,
  }) {
    return _then(_$FieldDtoImpl(
      valueType: freezed == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as String?,
      boundingPoly: freezed == boundingPoly
          ? _value.boundingPoly
          : boundingPoly // ignore: cast_nullable_to_non_nullable
              as BoundingPolyDto?,
      inferText: freezed == inferText
          ? _value.inferText
          : inferText // ignore: cast_nullable_to_non_nullable
              as String?,
      inferConfidence: freezed == inferConfidence
          ? _value.inferConfidence
          : inferConfidence // ignore: cast_nullable_to_non_nullable
              as double?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      lineBreak: freezed == lineBreak
          ? _value.lineBreak
          : lineBreak // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldDtoImpl implements _FieldDto {
  const _$FieldDtoImpl(
      {this.valueType,
      this.boundingPoly,
      this.inferText,
      this.inferConfidence,
      this.type,
      this.lineBreak});

  factory _$FieldDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldDtoImplFromJson(json);

  @override
  final String? valueType;
  @override
  final BoundingPolyDto? boundingPoly;
  @override
  final String? inferText;
  @override
  final double? inferConfidence;
  @override
  final String? type;
  @override
  final bool? lineBreak;

  @override
  String toString() {
    return 'FieldDto(valueType: $valueType, boundingPoly: $boundingPoly, inferText: $inferText, inferConfidence: $inferConfidence, type: $type, lineBreak: $lineBreak)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldDtoImpl &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.boundingPoly, boundingPoly) ||
                other.boundingPoly == boundingPoly) &&
            (identical(other.inferText, inferText) ||
                other.inferText == inferText) &&
            (identical(other.inferConfidence, inferConfidence) ||
                other.inferConfidence == inferConfidence) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lineBreak, lineBreak) ||
                other.lineBreak == lineBreak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, valueType, boundingPoly,
      inferText, inferConfidence, type, lineBreak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldDtoImplCopyWith<_$FieldDtoImpl> get copyWith =>
      __$$FieldDtoImplCopyWithImpl<_$FieldDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldDtoImplToJson(
      this,
    );
  }
}

abstract class _FieldDto implements FieldDto {
  const factory _FieldDto(
      {final String? valueType,
      final BoundingPolyDto? boundingPoly,
      final String? inferText,
      final double? inferConfidence,
      final String? type,
      final bool? lineBreak}) = _$FieldDtoImpl;

  factory _FieldDto.fromJson(Map<String, dynamic> json) =
      _$FieldDtoImpl.fromJson;

  @override
  String? get valueType;
  @override
  BoundingPolyDto? get boundingPoly;
  @override
  String? get inferText;
  @override
  double? get inferConfidence;
  @override
  String? get type;
  @override
  bool? get lineBreak;
  @override
  @JsonKey(ignore: true)
  _$$FieldDtoImplCopyWith<_$FieldDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BoundingPolyDto _$BoundingPolyDtoFromJson(Map<String, dynamic> json) {
  return _BoundingPolyDto.fromJson(json);
}

/// @nodoc
mixin _$BoundingPolyDto {
  List<VertexDto> get vertices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoundingPolyDtoCopyWith<BoundingPolyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundingPolyDtoCopyWith<$Res> {
  factory $BoundingPolyDtoCopyWith(
          BoundingPolyDto value, $Res Function(BoundingPolyDto) then) =
      _$BoundingPolyDtoCopyWithImpl<$Res, BoundingPolyDto>;
  @useResult
  $Res call({List<VertexDto> vertices});
}

/// @nodoc
class _$BoundingPolyDtoCopyWithImpl<$Res, $Val extends BoundingPolyDto>
    implements $BoundingPolyDtoCopyWith<$Res> {
  _$BoundingPolyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vertices = null,
  }) {
    return _then(_value.copyWith(
      vertices: null == vertices
          ? _value.vertices
          : vertices // ignore: cast_nullable_to_non_nullable
              as List<VertexDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoundingPolyDtoImplCopyWith<$Res>
    implements $BoundingPolyDtoCopyWith<$Res> {
  factory _$$BoundingPolyDtoImplCopyWith(_$BoundingPolyDtoImpl value,
          $Res Function(_$BoundingPolyDtoImpl) then) =
      __$$BoundingPolyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VertexDto> vertices});
}

/// @nodoc
class __$$BoundingPolyDtoImplCopyWithImpl<$Res>
    extends _$BoundingPolyDtoCopyWithImpl<$Res, _$BoundingPolyDtoImpl>
    implements _$$BoundingPolyDtoImplCopyWith<$Res> {
  __$$BoundingPolyDtoImplCopyWithImpl(
      _$BoundingPolyDtoImpl _value, $Res Function(_$BoundingPolyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vertices = null,
  }) {
    return _then(_$BoundingPolyDtoImpl(
      vertices: null == vertices
          ? _value._vertices
          : vertices // ignore: cast_nullable_to_non_nullable
              as List<VertexDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoundingPolyDtoImpl implements _BoundingPolyDto {
  const _$BoundingPolyDtoImpl({required final List<VertexDto> vertices})
      : _vertices = vertices;

  factory _$BoundingPolyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoundingPolyDtoImplFromJson(json);

  final List<VertexDto> _vertices;
  @override
  List<VertexDto> get vertices {
    if (_vertices is EqualUnmodifiableListView) return _vertices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vertices);
  }

  @override
  String toString() {
    return 'BoundingPolyDto(vertices: $vertices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoundingPolyDtoImpl &&
            const DeepCollectionEquality().equals(other._vertices, _vertices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_vertices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundingPolyDtoImplCopyWith<_$BoundingPolyDtoImpl> get copyWith =>
      __$$BoundingPolyDtoImplCopyWithImpl<_$BoundingPolyDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoundingPolyDtoImplToJson(
      this,
    );
  }
}

abstract class _BoundingPolyDto implements BoundingPolyDto {
  const factory _BoundingPolyDto({required final List<VertexDto> vertices}) =
      _$BoundingPolyDtoImpl;

  factory _BoundingPolyDto.fromJson(Map<String, dynamic> json) =
      _$BoundingPolyDtoImpl.fromJson;

  @override
  List<VertexDto> get vertices;
  @override
  @JsonKey(ignore: true)
  _$$BoundingPolyDtoImplCopyWith<_$BoundingPolyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VertexDto _$VertexDtoFromJson(Map<String, dynamic> json) {
  return _VertexDto.fromJson(json);
}

/// @nodoc
mixin _$VertexDto {
  double? get x => throw _privateConstructorUsedError;
  double? get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VertexDtoCopyWith<VertexDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VertexDtoCopyWith<$Res> {
  factory $VertexDtoCopyWith(VertexDto value, $Res Function(VertexDto) then) =
      _$VertexDtoCopyWithImpl<$Res, VertexDto>;
  @useResult
  $Res call({double? x, double? y});
}

/// @nodoc
class _$VertexDtoCopyWithImpl<$Res, $Val extends VertexDto>
    implements $VertexDtoCopyWith<$Res> {
  _$VertexDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VertexDtoImplCopyWith<$Res>
    implements $VertexDtoCopyWith<$Res> {
  factory _$$VertexDtoImplCopyWith(
          _$VertexDtoImpl value, $Res Function(_$VertexDtoImpl) then) =
      __$$VertexDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? x, double? y});
}

/// @nodoc
class __$$VertexDtoImplCopyWithImpl<$Res>
    extends _$VertexDtoCopyWithImpl<$Res, _$VertexDtoImpl>
    implements _$$VertexDtoImplCopyWith<$Res> {
  __$$VertexDtoImplCopyWithImpl(
      _$VertexDtoImpl _value, $Res Function(_$VertexDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$VertexDtoImpl(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VertexDtoImpl implements _VertexDto {
  const _$VertexDtoImpl({this.x, this.y});

  factory _$VertexDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VertexDtoImplFromJson(json);

  @override
  final double? x;
  @override
  final double? y;

  @override
  String toString() {
    return 'VertexDto(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VertexDtoImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VertexDtoImplCopyWith<_$VertexDtoImpl> get copyWith =>
      __$$VertexDtoImplCopyWithImpl<_$VertexDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VertexDtoImplToJson(
      this,
    );
  }
}

abstract class _VertexDto implements VertexDto {
  const factory _VertexDto({final double? x, final double? y}) =
      _$VertexDtoImpl;

  factory _VertexDto.fromJson(Map<String, dynamic> json) =
      _$VertexDtoImpl.fromJson;

  @override
  double? get x;
  @override
  double? get y;
  @override
  @JsonKey(ignore: true)
  _$$VertexDtoImplCopyWith<_$VertexDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
