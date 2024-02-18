import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ticker_list/modules/coin_list/data/responses/coin_response.dart';

part 'coin_list_response.freezed.dart';

part 'coin_list_response.g.dart';

@freezed
class CoinListResponse with _$CoinListResponse {
  const factory CoinListResponse({
    required List<CoinResponse> coins,
  }) = _CoinListResponse;

  factory CoinListResponse.fromJson(Map<String, Object?> json) =>
      _$CoinListResponseFromJson(json);
}
