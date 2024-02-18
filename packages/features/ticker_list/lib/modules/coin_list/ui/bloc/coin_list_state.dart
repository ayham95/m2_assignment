part of 'coin_list_bloc.dart';

sealed class CoinListState extends Equatable {
  const CoinListState();
}

class CoinListLoadingState extends CoinListState {
  @override
  List<Object> get props => [];
}

class CoinListIdleState extends CoinListState {
  final List<Coin> coins;
  final List<Coin> favouriteCoins;

  const CoinListIdleState({
    required this.coins,
    required this.favouriteCoins,
  });

  @override
  List<Object?> get props => [coins.hashCode, favouriteCoins.hashCode];
}

class CoinListErrorState extends CoinListState {
  const CoinListErrorState();

  @override
  List<Object?> get props => [];
}

class CoinListEmptyState extends CoinListState {
  const CoinListEmptyState();

  @override
  List<Object?> get props => [];
}
