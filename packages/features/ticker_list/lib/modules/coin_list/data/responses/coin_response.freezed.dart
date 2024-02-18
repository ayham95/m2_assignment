// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinResponse _$CoinResponseFromJson(Map<String, dynamic> json) {
  return _CoinResponse.fromJson(json);
}

/// @nodoc
mixin _$CoinResponse {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinResponseCopyWith<CoinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinResponseCopyWith<$Res> {
  factory $CoinResponseCopyWith(
          CoinResponse value, $Res Function(CoinResponse) then) =
      _$CoinResponseCopyWithImpl<$Res, CoinResponse>;
  @useResult
  $Res call({String symbol, String name, String iconUrl});
}

/// @nodoc
class _$CoinResponseCopyWithImpl<$Res, $Val extends CoinResponse>
    implements $CoinResponseCopyWith<$Res> {
  _$CoinResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? iconUrl = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinResponseImplCopyWith<$Res>
    implements $CoinResponseCopyWith<$Res> {
  factory _$$CoinResponseImplCopyWith(
          _$CoinResponseImpl value, $Res Function(_$CoinResponseImpl) then) =
      __$$CoinResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, String name, String iconUrl});
}

/// @nodoc
class __$$CoinResponseImplCopyWithImpl<$Res>
    extends _$CoinResponseCopyWithImpl<$Res, _$CoinResponseImpl>
    implements _$$CoinResponseImplCopyWith<$Res> {
  __$$CoinResponseImplCopyWithImpl(
      _$CoinResponseImpl _value, $Res Function(_$CoinResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? iconUrl = null,
  }) {
    return _then(_$CoinResponseImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinResponseImpl implements _CoinResponse {
  const _$CoinResponseImpl(
      {required this.symbol, required this.name, required this.iconUrl});

  factory _$CoinResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinResponseImplFromJson(json);

  @override
  final String symbol;
  @override
  final String name;
  @override
  final String iconUrl;

  @override
  String toString() {
    return 'CoinResponse(symbol: $symbol, name: $name, iconUrl: $iconUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinResponseImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, iconUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinResponseImplCopyWith<_$CoinResponseImpl> get copyWith =>
      __$$CoinResponseImplCopyWithImpl<_$CoinResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinResponseImplToJson(
      this,
    );
  }
}

abstract class _CoinResponse implements CoinResponse {
  const factory _CoinResponse(
      {required final String symbol,
      required final String name,
      required final String iconUrl}) = _$CoinResponseImpl;

  factory _CoinResponse.fromJson(Map<String, dynamic> json) =
      _$CoinResponseImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  String get iconUrl;
  @override
  @JsonKey(ignore: true)
  _$$CoinResponseImplCopyWith<_$CoinResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
