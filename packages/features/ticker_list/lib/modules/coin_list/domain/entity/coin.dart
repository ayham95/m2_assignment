import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin.freezed.dart';

@freezed
class Coin with _$Coin {
  const factory Coin({
    required String symbol,
    required String name,
    required String imageUrl,
    @Default(false) bool isFavourite,
  }) = _Coin;
}
