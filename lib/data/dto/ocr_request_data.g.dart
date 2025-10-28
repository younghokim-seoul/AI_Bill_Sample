// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ocr_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OcrReqImageImpl _$$OcrReqImageImplFromJson(Map<String, dynamic> json) =>
    _$OcrReqImageImpl(
      format: json['format'] as String,
      name: json['name'] as String,
      data: json['data'] as String,
    );

Map<String, dynamic> _$$OcrReqImageImplToJson(_$OcrReqImageImpl instance) =>
    <String, dynamic>{
      'format': instance.format,
      'name': instance.name,
      'data': instance.data,
    };

_$OcrRequestDataImpl _$$OcrRequestDataImplFromJson(Map<String, dynamic> json) =>
    _$OcrRequestDataImpl(
      version: $enumDecode(_$OcrVersionEnumMap, json['version']),
      requestId: json['requestId'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      lang: $enumDecodeNullable(_$LangEnumMap, json['lang']),
      images: (json['images'] as List<dynamic>)
          .map((e) => OcrReqImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      enableTableDetection: json['enableTableDetection'] as bool?,
    );

Map<String, dynamic> _$$OcrRequestDataImplToJson(
    _$OcrRequestDataImpl instance) {
  final val = <String, dynamic>{
    'version': _$OcrVersionEnumMap[instance.version]!,
    'requestId': instance.requestId,
    'timestamp': instance.timestamp,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lang', _$LangEnumMap[instance.lang]);
  val['images'] = instance.images;
  writeNotNull('enableTableDetection', instance.enableTableDetection);
  return val;
}

const _$OcrVersionEnumMap = {
  OcrVersion.v1: 'V1',
  OcrVersion.v2: 'V2',
};

const _$LangEnumMap = {
  Lang.ko: 'ko',
};
