import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:result/result.dart';
import 'package:ticker_tile/modules/ticker_tile/domain/entity/ticker.dart';
import 'package:ticker_tile/modules/ticker_tile/domain/exceptions/current_rate_not_available_exception.dart';
import 'package:ticker_tile/modules/ticker_tile/domain/ticker_repository.dart';

@Injectable()
class SubscribeToTickerUseCase {

  final TickerRepository _repository;

  SubscribeToTickerUseCase(this._repository);

  Stream<Result<Ticker, Exception>> call({required String symbol}) {
    final ticker = _repository.getTicker(tickerSymbol: '${symbol}usdt');
    return ticker.transform(_transformer());
  }

  StreamTransformer<Ticker, Result<Ticker, Exception>> _transformer() {
    return StreamTransformer<Ticker, Result<Ticker, Exception>>.fromHandlers(
      handleData: _dataHandler,
    );
  }

  void _dataHandler(data, sink) {
    try {
      sink.add(ValueResult<Ticker, Exception>(data));
    } catch (error) {
      sink.addError(ErrorResult(CurrentRateNotAvailableException()));
    }
  }
}