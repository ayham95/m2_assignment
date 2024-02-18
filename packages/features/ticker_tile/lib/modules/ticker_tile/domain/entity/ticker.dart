import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticker.freezed.dart';

@freezed
class Ticker with _$Ticker {
  const factory Ticker({
    required String tickerSymbol,
    required String changePercentage,
    required double rate,
  }) = _Ticker;
}
