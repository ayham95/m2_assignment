import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_response.freezed.dart';

part 'coin_response.g.dart';

@freezed
class CoinResponse with _$CoinResponse {
  const factory CoinResponse({
    required String symbol,
    required String name,
    required String iconUrl,
  }) = _CoinResponse;

  factory CoinResponse.fromJson(Map<String, Object?> json) =>
      _$CoinResponseFromJson(json);
}
