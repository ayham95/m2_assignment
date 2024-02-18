import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:ticker_tile/modules/ticker_tile/data/mappers/ticker_mapper.dart';
import 'package:ticker_tile/modules/ticker_tile/data/responses/ticker_response.dart';
import 'package:ticker_tile/modules/ticker_tile/data/sources/ticker_remote_data_source.dart';
import 'package:ticker_tile/modules/ticker_tile/domain/entity/ticker.dart';
import 'package:ticker_tile/modules/ticker_tile/domain/ticker_repository.dart';

@Injectable(as: TickerRepository)
class TickerRepositoryImpl implements TickerRepository {
  final TickerRemoteDataSource tickerRemoteDataSource;
  final TickerMapper _tickerMapper;

  TickerRepositoryImpl(
    this._tickerMapper,
    this.tickerRemoteDataSource,
  );

  @override
  Stream<Ticker> getTicker({required String tickerSymbol}) {
    return tickerRemoteDataSource
        .tickerListener(symbol: tickerSymbol)
        .transform(_transformer());
  }

  @override
  void close() {
    tickerRemoteDataSource.close();
  }

  StreamTransformer<TickerResponse, Ticker> _transformer() {
    return StreamTransformer<TickerResponse, Ticker>.fromHandlers(
      handleData: _dataHandler,
    );
  }

  void _dataHandler(data, sink) {
    try {
      sink.add(_tickerMapper.map(data));
    } catch (error) {
      sink.addError(error);
    }
  }

}
