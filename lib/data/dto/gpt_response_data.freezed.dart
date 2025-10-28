// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gpt_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GptResponse _$GptResponseFromJson(Map<String, dynamic> json) {
  return _GptResponse.fromJson(json);
}

/// @nodoc
mixin _$GptResponse {
  String get summaries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GptResponseCopyWith<GptResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GptResponseCopyWith<$Res> {
  factory $GptResponseCopyWith(
          GptResponse value, $Res Function(GptResponse) then) =
      _$GptResponseCopyWithImpl<$Res, GptResponse>;
  @useResult
  $Res call({String summaries});
}

/// @nodoc
class _$GptResponseCopyWithImpl<$Res, $Val extends GptResponse>
    implements $GptResponseCopyWith<$Res> {
  _$GptResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summaries = null,
  }) {
    return _then(_value.copyWith(
      summaries: null == summaries
          ? _value.summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GptResponseImplCopyWith<$Res>
    implements $GptResponseCopyWith<$Res> {
  factory _$$GptResponseImplCopyWith(
          _$GptResponseImpl value, $Res Function(_$GptResponseImpl) then) =
      __$$GptResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String summaries});
}

/// @nodoc
class __$$GptResponseImplCopyWithImpl<$Res>
    extends _$GptResponseCopyWithImpl<$Res, _$GptResponseImpl>
    implements _$$GptResponseImplCopyWith<$Res> {
  __$$GptResponseImplCopyWithImpl(
      _$GptResponseImpl _value, $Res Function(_$GptResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summaries = null,
  }) {
    return _then(_$GptResponseImpl(
      summaries: null == summaries
          ? _value.summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GptResponseImpl implements _GptResponse {
  const _$GptResponseImpl({required this.summaries});

  factory _$GptResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GptResponseImplFromJson(json);

  @override
  final String summaries;

  @override
  String toString() {
    return 'GptResponse(summaries: $summaries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GptResponseImpl &&
            (identical(other.summaries, summaries) ||
                other.summaries == summaries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, summaries);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GptResponseImplCopyWith<_$GptResponseImpl> get copyWith =>
      __$$GptResponseImplCopyWithImpl<_$GptResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GptResponseImplToJson(
      this,
    );
  }
}

abstract class _GptResponse implements GptResponse {
  const factory _GptResponse({required final String summaries}) =
      _$GptResponseImpl;

  factory _GptResponse.fromJson(Map<String, dynamic> json) =
      _$GptResponseImpl.fromJson;

  @override
  String get summaries;
  @override
  @JsonKey(ignore: true)
  _$$GptResponseImplCopyWith<_$GptResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
