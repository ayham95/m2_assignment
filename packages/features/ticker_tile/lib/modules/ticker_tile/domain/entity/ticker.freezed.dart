// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Ticker {
  String get tickerSymbol => throw _privateConstructorUsedError;
  String get changePercentage => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TickerCopyWith<Ticker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickerCopyWith<$Res> {
  factory $TickerCopyWith(Ticker value, $Res Function(Ticker) then) =
      _$TickerCopyWithImpl<$Res, Ticker>;
  @useResult
  $Res call({String tickerSymbol, String changePercentage, double rate});
}

/// @nodoc
class _$TickerCopyWithImpl<$Res, $Val extends Ticker>
    implements $TickerCopyWith<$Res> {
  _$TickerCopyWithImpl(this._value, this._then);

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
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TickerCopyWith<$Res> implements $TickerCopyWith<$Res> {
  factory _$$_TickerCopyWith(_$_Ticker value, $Res Function(_$_Ticker) then) =
      __$$_TickerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tickerSymbol, String changePercentage, double rate});
}

/// @nodoc
class __$$_TickerCopyWithImpl<$Res>
    extends _$TickerCopyWithImpl<$Res, _$_Ticker>
    implements _$$_TickerCopyWith<$Res> {
  __$$_TickerCopyWithImpl(_$_Ticker _value, $Res Function(_$_Ticker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickerSymbol = null,
    Object? changePercentage = null,
    Object? rate = null,
  }) {
    return _then(_$_Ticker(
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
              as double,
    ));
  }
}

/// @nodoc

class _$_Ticker implements _Ticker {
  const _$_Ticker(
      {required this.tickerSymbol,
      required this.changePercentage,
      required this.rate});

  @override
  final String tickerSymbol;
  @override
  final String changePercentage;
  @override
  final double rate;

  @override
  String toString() {
    return 'Ticker(tickerSymbol: $tickerSymbol, changePercentage: $changePercentage, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ticker &&
            (identical(other.tickerSymbol, tickerSymbol) ||
                other.tickerSymbol == tickerSymbol) &&
            (identical(other.changePercentage, changePercentage) ||
                other.changePercentage == changePercentage) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tickerSymbol, changePercentage, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TickerCopyWith<_$_Ticker> get copyWith =>
      __$$_TickerCopyWithImpl<_$_Ticker>(this, _$identity);
}

abstract class _Ticker implements Ticker {
  const factory _Ticker(
      {required final String tickerSymbol,
      required final String changePercentage,
      required final double rate}) = _$_Ticker;

  @override
  String get tickerSymbol;
  @override
  String get changePercentage;
  @override
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$$_TickerCopyWith<_$_Ticker> get copyWith =>
      throw _privateConstructorUsedError;
}
