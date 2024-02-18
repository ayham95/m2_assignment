import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ticker_tile/modules/ticker_tile/domain/entity/ticker.dart';
import 'package:ticker_tile/modules/ticker_tile/domain/use_cases/subscribe_to_ticker_use_case.dart';

part 'ticker_event.dart';

part 'ticker_state.dart';

@Injectable()
class TickerBloc extends Bloc<TickerEvent, TickerState> {
  final SubscribeToTickerUseCase _subscribeToTickerUseCase;

  TickerBloc(
    this._subscribeToTickerUseCase,
  ) : super(TickerLoadingState()) {
    on<LoadTickerEvent>(_onLoadTicker);
    on<_TickerChangedEvent>(_tickerChangedEvent);
    on<_TickerErrorEvent>(_tickerErrorEvent);
  }

  StreamSubscription? subscription;

  Future _onLoadTicker(
    LoadTickerEvent event,
    Emitter<TickerState> emit,
  ) async {
    subscription?.cancel();

    subscription = _subscribeToTickerUseCase(symbol: event.symbol).listen(
      (event) {
        if (event.isValueResult) {
          add(_TickerChangedEvent(event.value));
        } else {
          add(const _TickerErrorEvent());
        }
      },
    );
  }

  Future _tickerChangedEvent(
    _TickerChangedEvent event,
    Emitter<TickerState> emit,
  ) async {
    emit(TickerIdleState(ticker: event.ticker));
  }

  Future _tickerErrorEvent(
      _TickerErrorEvent event,
    Emitter<TickerState> emit,
  ) async {
    emit(const TickerErrorState());
  }

  @override
  Future<void> close() {
    subscription?.cancel();
    return super.close();
  }
}
