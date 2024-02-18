import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:ticker_tile/modules/ticker_tile/data/responses/ticker_response.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

@Injectable()
class TickerRemoteDataSource {

  // In an ideal scenario this should be a dependency
  WebSocketChannel? _channel;

  Stream<TickerResponse> tickerListener({required String symbol}) {

    final wsUrl = Uri.parse('wss://fstream.binance.com/ws/$symbol@ticker');
    _channel = WebSocketChannel.connect(wsUrl);

    return _channel!.stream.transform(_transformer());
  }

  void close() {
    _channel?.sink.close();
  }

  StreamTransformer<dynamic, TickerResponse> _transformer() {
    return StreamTransformer<dynamic, TickerResponse>.fromHandlers(
      handleData: _dataHandler,
    );
  }

  void _dataHandler(data, sink) {
    try {
      sink.add(TickerResponse.fromJson(json.decode(data)));
    } catch (error) {
      sink.addError(error);
    }
  }
}