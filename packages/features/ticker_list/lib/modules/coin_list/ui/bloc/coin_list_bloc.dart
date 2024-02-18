import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';
import 'package:ticker_list/modules/coin_list/domain/use_cases/get_coin_list_use_case.dart';
import 'package:ticker_list/modules/coin_list/domain/use_cases/get_favourite_coin_list_use_case.dart';
import 'package:ticker_list/modules/coin_list/domain/use_cases/search_coin_list_use_case.dart';
import 'package:ticker_list/modules/coin_list/domain/use_cases/toggle_coin_as_favourite_use_case.dart';

part 'coin_list_event.dart';

part 'coin_list_state.dart';

@Injectable()
class CoinListBloc extends Bloc<CoinListEvent, CoinListState> {
  final GetCoinListUseCase _getCoinListUseCase;
  final SearchCoinListUseCase _searchCoinListUseCase;
  final ToggleCoinAsFavouriteUseCase _toggleCoinAsFavouriteUseCase;
  final GetFavouriteCoinListUseCase _getFavouriteCoinListUseCase;

  CoinListBloc(
    this._getCoinListUseCase,
    this._searchCoinListUseCase,
    this._toggleCoinAsFavouriteUseCase,
    this._getFavouriteCoinListUseCase,
  ) : super(CoinListLoadingState()) {
    on<LoadCoinListEvent>(_onLoadCoinList);
    on<SearchCoinListEvent>(_onSearchCoinList);
    on<ToggleAsFavouriteEvent>(_onToggleAsFavourite);
  }

  void _onLoadCoinList(
    LoadCoinListEvent event,
    Emitter<CoinListState> emit,
  ) async {
    final result = await _getCoinListUseCase();
    if (result.isValueResult) {
      emit(CoinListIdleState(coins: result.value, favouriteCoins: []));
    }
  }

  void _onSearchCoinList(
    SearchCoinListEvent event,
    Emitter<CoinListState> emit,
  ) async {
    final result = await _getCoinListUseCase();
    if (result.isValueResult) {
      final coins = result.value;
      if (coins.isEmpty) {
        emit(const CoinListEmptyState());
      }
      final favResult = _getFavouriteCoinListUseCase();
      if (event.query.isEmpty) {
        final favResult = _getFavouriteCoinListUseCase();
        emit(CoinListIdleState(coins: coins, favouriteCoins: favResult));
      }
      final searchResult = _searchCoinListUseCase(
        query: event.query,
        coins: coins,
      );
      emit(CoinListIdleState(coins: searchResult, favouriteCoins: favResult));
    }
  }

  void _onToggleAsFavourite(
    ToggleAsFavouriteEvent event,
    Emitter<CoinListState> emit,
  ) async {
    _toggleCoinAsFavouriteUseCase(event.coin);
    final result = await _getCoinListUseCase();
    if (result.isValueResult) {
      final favResult = _getFavouriteCoinListUseCase();
      emit(CoinListIdleState(coins: result.value, favouriteCoins: favResult));
    }
  }
}
