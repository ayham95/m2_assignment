part of 'coin_list_bloc.dart';

sealed class CoinListEvent extends Equatable {
  const CoinListEvent();
}

class LoadCoinListEvent extends CoinListEvent {
  const LoadCoinListEvent();

  @override
  List<Object?> get props => [];
}

class SearchCoinListEvent extends CoinListEvent {
  final String query;

  const SearchCoinListEvent({required this.query});

  @override
  List<Object?> get props => [query];
}

class ToggleAsFavouriteEvent extends CoinListEvent {
  final Coin coin;

  const ToggleAsFavouriteEvent({required this.coin});

  @override
  List<Object?> get props => [coin];
}
