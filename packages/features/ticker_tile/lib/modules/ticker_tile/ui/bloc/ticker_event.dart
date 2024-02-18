part of 'ticker_bloc.dart';

sealed class TickerEvent extends Equatable {
  const TickerEvent();
}

class LoadTickerEvent extends TickerEvent {
  final String symbol;

  const LoadTickerEvent({
    required this.symbol,
  });

  @override
  List<Object?> get props => [symbol];
}

class _TickerChangedEvent extends TickerEvent {
  final Ticker ticker;

  const _TickerChangedEvent(this.ticker);

  @override
  List<Object?> get props => [ticker];
}
class _TickerErrorEvent extends TickerEvent {

  const _TickerErrorEvent();

  @override
  List<Object?> get props => [];
}