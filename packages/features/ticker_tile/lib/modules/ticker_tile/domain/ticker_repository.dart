import 'package:ticker_tile/modules/ticker_tile/domain/entity/ticker.dart';

abstract class TickerRepository {
  Stream<Ticker> getTicker({required String tickerSymbol});
  void close();
}