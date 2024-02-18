// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinListResponseImpl _$$CoinListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CoinListResponseImpl(
      coins: (json['coins'] as List<dynamic>)
          .map((e) => CoinResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CoinListResponseImplToJson(
        _$CoinListResponseImpl instance) =>
    <String, dynamic>{
      'coins': instance.coins,
    };
