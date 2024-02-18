// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticker_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TickerResponse _$$_TickerResponseFromJson(Map<String, dynamic> json) =>
    _$_TickerResponse(
      tickerSymbol: json['s'] as String,
      changePercentage: json['P'] as String,
      rate: json['c'] as String,
    );

Map<String, dynamic> _$$_TickerResponseToJson(_$_TickerResponse instance) =>
    <String, dynamic>{
      's': instance.tickerSymbol,
      'P': instance.changePercentage,
      'c': instance.rate,
    };
