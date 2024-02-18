part of 'ticker_bloc.dart';

sealed class TickerState extends Equatable {
  const TickerState();
}

class TickerLoadingState extends TickerState {
  @override
  List<Object> get props => [];
}

class TickerIdleState extends TickerState {
  final Ticker ticker;

  const TickerIdleState({
    required this.ticker,
  });

  @override
  List<Object?> get props => [ticker];
}

class TickerErrorState extends TickerState {
  const TickerErrorState();

  @override
  List<Object?> get props => [];
}
