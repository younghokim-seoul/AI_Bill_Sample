// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ocr_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OcrResponseImpl _$$OcrResponseImplFromJson(Map<String, dynamic> json) =>
    _$OcrResponseImpl(
      version: json['version'] as String,
      requestId: json['requestId'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      images: (json['images'] as List<dynamic>)
          .map((e) => OcrImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OcrResponseImplToJson(_$OcrResponseImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'requestId': instance.requestId,
      'timestamp': instance.timestamp,
      'images': instance.images,
    };

_$OcrImageImpl _$$OcrImageImplFromJson(Map<String, dynamic> json) =>
    _$OcrImageImpl(
      uid: json['uid'] as String,
      name: json['name'] as String,
      inferResult: json['inferResult'] as String,
      message: json['message'] as String,
      validationResult: ValidationResult.fromJson(
          json['validationResult'] as Map<String, dynamic>),
      convertedImageInfo: ConvertedImageInfo.fromJson(
          json['convertedImageInfo'] as Map<String, dynamic>),
      fields: (json['fields'] as List<dynamic>)
          .map((e) => FieldDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OcrImageImplToJson(_$OcrImageImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'inferResult': instance.inferResult,
      'message': instance.message,
      'validationResult': instance.validationResult,
      'convertedImageInfo': instance.convertedImageInfo,
      'fields': instance.fields,
    };

_$ValidationResultImpl _$$ValidationResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationResultImpl(
      result: json['result'] as String,
    );

Map<String, dynamic> _$$ValidationResultImplToJson(
        _$ValidationResultImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$ConvertedImageInfoImpl _$$ConvertedImageInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ConvertedImageInfoImpl(
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      pageIndex: (json['pageIndex'] as num).toInt(),
      longImage: json['longImage'] as bool,
    );

Map<String, dynamic> _$$ConvertedImageInfoImplToJson(
        _$ConvertedImageInfoImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'pageIndex': instance.pageIndex,
      'longImage': instance.longImage,
    };

_$FieldDtoImpl _$$FieldDtoImplFromJson(Map<String, dynamic> json) =>
    _$FieldDtoImpl(
      valueType: json['valueType'] as String?,
      boundingPoly: json['boundingPoly'] == null
          ? null
          : BoundingPolyDto.fromJson(
              json['boundingPoly'] as Map<String, dynamic>),
      inferText: json['inferText'] as String?,
      inferConfidence: (json['inferConfidence'] as num?)?.toDouble(),
      type: json['type'] as String?,
      lineBreak: json['lineBreak'] as bool?,
    );

Map<String, dynamic> _$$FieldDtoImplToJson(_$FieldDtoImpl instance) =>
    <String, dynamic>{
      'valueType': instance.valueType,
      'boundingPoly': instance.boundingPoly,
      'inferText': instance.inferText,
      'inferConfidence': instance.inferConfidence,
      'type': instance.type,
      'lineBreak': instance.lineBreak,
    };

_$BoundingPolyDtoImpl _$$BoundingPolyDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$BoundingPolyDtoImpl(
      vertices: (json['vertices'] as List<dynamic>)
          .map((e) => VertexDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BoundingPolyDtoImplToJson(
        _$BoundingPolyDtoImpl instance) =>
    <String, dynamic>{
      'vertices': instance.vertices,
    };

_$VertexDtoImpl _$$VertexDtoImplFromJson(Map<String, dynamic> json) =>
    _$VertexDtoImpl(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$VertexDtoImplToJson(_$VertexDtoImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
