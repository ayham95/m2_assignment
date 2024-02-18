// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticker_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TickerResponse _$TickerResponseFromJson(Map<String, dynamic> json) {
  return _TickerResponse.fromJson(json);
}

/// @nodoc
mixin _$TickerResponse {
  @JsonKey(name: 's')
  String get tickerSymbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'P')
  String get changePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'c')
  String get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TickerResponseCopyWith<TickerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickerResponseCopyWith<$Res> {
  factory $TickerResponseCopyWith(
          TickerResponse value, $Res Function(TickerResponse) then) =
      _$TickerResponseCopyWithImpl<$Res, TickerResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 's') String tickerSymbol,
      @JsonKey(name: 'P') String changePercentage,
      @JsonKey(name: 'c') String rate});
}

/// @nodoc
class _$TickerResponseCopyWithImpl<$Res, $Val extends TickerResponse>
    implements $TickerResponseCopyWith<$Res> {
  _$TickerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickerSymbol = null,
    Object? changePercentage = null,
    Object? rate = null,
  }) {
    return _then(_value.copyWith(
      tickerSymbol: null == tickerSymbol
          ? _value.tickerSymbol
          : tickerSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      changePercentage: null == changePercentage
          ? _value.changePercentage
          : changePercentage // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TickerResponseCopyWith<$Res>
    implements $TickerResponseCopyWith<$Res> {
  factory _$$_TickerResponseCopyWith(
          _$_TickerResponse value, $Res Function(_$_TickerResponse) then) =
      __$$_TickerResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 's') String tickerSymbol,
      @JsonKey(name: 'P') String changePercentage,
      @JsonKey(name: 'c') String rate});
}

/// @nodoc
class __$$_TickerResponseCopyWithImpl<$Res>
    extends _$TickerResponseCopyWithImpl<$Res, _$_TickerResponse>
    implements _$$_TickerResponseCopyWith<$Res> {
  __$$_TickerResponseCopyWithImpl(
      _$_TickerResponse _value, $Res Function(_$_TickerResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickerSymbol = null,
    Object? changePercentage = null,
    Object? rate = null,
  }) {
    return _then(_$_TickerResponse(
      tickerSymbol: null == tickerSymbol
          ? _value.tickerSymbol
          : tickerSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      changePercentage: null == changePercentage
          ? _value.changePercentage
          : changePercentage // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TickerResponse implements _TickerResponse {
  const _$_TickerResponse(
      {@JsonKey(name: 's') required this.tickerSymbol,
      @JsonKey(name: 'P') required this.changePercentage,
      @JsonKey(name: 'c') required this.rate});

  factory _$_TickerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TickerResponseFromJson(json);

  @override
  @JsonKey(name: 's')
  final String tickerSymbol;
  @override
  @JsonKey(name: 'P')
  final String changePercentage;
  @override
  @JsonKey(name: 'c')
  final String rate;

  @override
  String toString() {
    return 'TickerResponse(tickerSymbol: $tickerSymbol, changePercentage: $changePercentage, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TickerResponse &&
            (identical(other.tickerSymbol, tickerSymbol) ||
                other.tickerSymbol == tickerSymbol) &&
            (identical(other.changePercentage, changePercentage) ||
                other.changePercentage == changePercentage) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tickerSymbol, changePercentage, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TickerResponseCopyWith<_$_TickerResponse> get copyWith =>
      __$$_TickerResponseCopyWithImpl<_$_TickerResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TickerResponseToJson(
      this,
    );
  }
}

abstract class _TickerResponse implements TickerResponse {
  const factory _TickerResponse(
      {@JsonKey(name: 's') required final String tickerSymbol,
      @JsonKey(name: 'P') required final String changePercentage,
      @JsonKey(name: 'c') required final String rate}) = _$_TickerResponse;

  factory _TickerResponse.fromJson(Map<String, dynamic> json) =
      _$_TickerResponse.fromJson;

  @override
  @JsonKey(name: 's')
  String get tickerSymbol;
  @override
  @JsonKey(name: 'P')
  String get changePercentage;
  @override
  @JsonKey(name: 'c')
  String get rate;
  @override
  @JsonKey(ignore: true)
  _$$_TickerResponseCopyWith<_$_TickerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
