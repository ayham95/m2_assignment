import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticker_response.freezed.dart';

part 'ticker_response.g.dart';

@freezed
class TickerResponse with _$TickerResponse {
  const factory TickerResponse({
    @JsonKey(name: 's')
    required String tickerSymbol,
    @JsonKey(name: 'P')
    required String changePercentage,
    @JsonKey(name: 'c')
    required String rate,
  }) = _TickerResponse;

  factory TickerResponse.fromJson(Map<String, Object?> json) =>
      _$TickerResponseFromJson(json);
}
