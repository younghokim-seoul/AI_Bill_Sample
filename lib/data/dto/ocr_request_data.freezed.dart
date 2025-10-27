// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ocr_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OcrImage _$OcrImageFromJson(Map<String, dynamic> json) {
  return _OcrImage.fromJson(json);
}

/// @nodoc
mixin _$OcrImage {
  String get format => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

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
  $Res call({String format, String name, String data});
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
    Object? format = null,
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
  $Res call({String format, String name, String data});
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
    Object? format = null,
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$OcrImageImpl(
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OcrImageImpl implements _OcrImage {
  const _$OcrImageImpl(
      {required this.format, required this.name, required this.data});

  factory _$OcrImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OcrImageImplFromJson(json);

  @override
  final String format;
  @override
  final String name;
  @override
  final String data;

  @override
  String toString() {
    return 'OcrImage(format: $format, name: $name, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OcrImageImpl &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, format, name, data);

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
      {required final String format,
      required final String name,
      required final String data}) = _$OcrImageImpl;

  factory _OcrImage.fromJson(Map<String, dynamic> json) =
      _$OcrImageImpl.fromJson;

  @override
  String get format;
  @override
  String get name;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$OcrImageImplCopyWith<_$OcrImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OcrRequestData _$OcrRequestDataFromJson(Map<String, dynamic> json) {
  return _OcrRequestData.fromJson(json);
}

/// @nodoc
mixin _$OcrRequestData {
  @JsonKey(name: 'version')
  OcrVersion get version => throw _privateConstructorUsedError;
  String get requestId => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  /// lang은 선택값. 넣을 때는 Lang.ko만 사용.
  @JsonKey(includeIfNull: false)
  Lang? get lang => throw _privateConstructorUsedError;
  List<OcrImage> get images => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get enableTableDetection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OcrRequestDataCopyWith<OcrRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OcrRequestDataCopyWith<$Res> {
  factory $OcrRequestDataCopyWith(
          OcrRequestData value, $Res Function(OcrRequestData) then) =
      _$OcrRequestDataCopyWithImpl<$Res, OcrRequestData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'version') OcrVersion version,
      String requestId,
      int timestamp,
      @JsonKey(includeIfNull: false) Lang? lang,
      List<OcrImage> images,
      @JsonKey(includeIfNull: false) bool? enableTableDetection});
}

/// @nodoc
class _$OcrRequestDataCopyWithImpl<$Res, $Val extends OcrRequestData>
    implements $OcrRequestDataCopyWith<$Res> {
  _$OcrRequestDataCopyWithImpl(this._value, this._then);

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
    Object? lang = freezed,
    Object? images = null,
    Object? enableTableDetection = freezed,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as OcrVersion,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Lang?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<OcrImage>,
      enableTableDetection: freezed == enableTableDetection
          ? _value.enableTableDetection
          : enableTableDetection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OcrRequestDataImplCopyWith<$Res>
    implements $OcrRequestDataCopyWith<$Res> {
  factory _$$OcrRequestDataImplCopyWith(_$OcrRequestDataImpl value,
          $Res Function(_$OcrRequestDataImpl) then) =
      __$$OcrRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'version') OcrVersion version,
      String requestId,
      int timestamp,
      @JsonKey(includeIfNull: false) Lang? lang,
      List<OcrImage> images,
      @JsonKey(includeIfNull: false) bool? enableTableDetection});
}

/// @nodoc
class __$$OcrRequestDataImplCopyWithImpl<$Res>
    extends _$OcrRequestDataCopyWithImpl<$Res, _$OcrRequestDataImpl>
    implements _$$OcrRequestDataImplCopyWith<$Res> {
  __$$OcrRequestDataImplCopyWithImpl(
      _$OcrRequestDataImpl _value, $Res Function(_$OcrRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? requestId = null,
    Object? timestamp = null,
    Object? lang = freezed,
    Object? images = null,
    Object? enableTableDetection = freezed,
  }) {
    return _then(_$OcrRequestDataImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as OcrVersion,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Lang?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<OcrImage>,
      enableTableDetection: freezed == enableTableDetection
          ? _value.enableTableDetection
          : enableTableDetection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OcrRequestDataImpl implements _OcrRequestData {
  const _$OcrRequestDataImpl(
      {@JsonKey(name: 'version') required this.version,
      required this.requestId,
      required this.timestamp,
      @JsonKey(includeIfNull: false) this.lang,
      required final List<OcrImage> images,
      @JsonKey(includeIfNull: false) this.enableTableDetection})
      : _images = images;

  factory _$OcrRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OcrRequestDataImplFromJson(json);

  @override
  @JsonKey(name: 'version')
  final OcrVersion version;
  @override
  final String requestId;
  @override
  final int timestamp;

  /// lang은 선택값. 넣을 때는 Lang.ko만 사용.
  @override
  @JsonKey(includeIfNull: false)
  final Lang? lang;
  final List<OcrImage> _images;
  @override
  List<OcrImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(includeIfNull: false)
  final bool? enableTableDetection;

  @override
  String toString() {
    return 'OcrRequestData(version: $version, requestId: $requestId, timestamp: $timestamp, lang: $lang, images: $images, enableTableDetection: $enableTableDetection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OcrRequestDataImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.enableTableDetection, enableTableDetection) ||
                other.enableTableDetection == enableTableDetection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version, requestId, timestamp,
      lang, const DeepCollectionEquality().hash(_images), enableTableDetection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OcrRequestDataImplCopyWith<_$OcrRequestDataImpl> get copyWith =>
      __$$OcrRequestDataImplCopyWithImpl<_$OcrRequestDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OcrRequestDataImplToJson(
      this,
    );
  }
}

abstract class _OcrRequestData implements OcrRequestData {
  const factory _OcrRequestData(
          {@JsonKey(name: 'version') required final OcrVersion version,
          required final String requestId,
          required final int timestamp,
          @JsonKey(includeIfNull: false) final Lang? lang,
          required final List<OcrImage> images,
          @JsonKey(includeIfNull: false) final bool? enableTableDetection}) =
      _$OcrRequestDataImpl;

  factory _OcrRequestData.fromJson(Map<String, dynamic> json) =
      _$OcrRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'version')
  OcrVersion get version;
  @override
  String get requestId;
  @override
  int get timestamp;
  @override

  /// lang은 선택값. 넣을 때는 Lang.ko만 사용.
  @JsonKey(includeIfNull: false)
  Lang? get lang;
  @override
  List<OcrImage> get images;
  @override
  @JsonKey(includeIfNull: false)
  bool? get enableTableDetection;
  @override
  @JsonKey(ignore: true)
  _$$OcrRequestDataImplCopyWith<_$OcrRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
