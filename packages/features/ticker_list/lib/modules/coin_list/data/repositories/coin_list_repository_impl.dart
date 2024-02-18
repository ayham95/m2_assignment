import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:ticker_list/modules/coin_list/data/mappers/coin_list_mapper.dart';
import 'package:ticker_list/modules/coin_list/data/sources/coin_memory_data_source.dart';
import 'package:ticker_list/modules/coin_list/data/sources/coin_remote_data_source.dart';
import 'package:ticker_list/modules/coin_list/domain/coin_list_repository.dart';
import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';

@Injectable(as: CoinListRepository)
class CoinListRepositoryImpl implements CoinListRepository {
  final CoinListRemoteDataSource coinListRemoteDataSource;
  final CoinListMemoryDataSource coinListMemoryDataSource;
  final CoinListMapper _coinListMapper;

  CoinListRepositoryImpl(
    this._coinListMapper,
    this.coinListRemoteDataSource,
    this.coinListMemoryDataSource,
  );

  @override
  Future<List<Coin>> getCoinList() async {
    if(coinListMemoryDataSource.getCoins().isEmpty) {
      final result = await coinListRemoteDataSource.getCoinList();
      coinListMemoryDataSource.setCache(_coinListMapper.map(result));
    }
    return coinListMemoryDataSource.getCoins();
  }

  @override
  List<Coin> getFavouriteCoinList() =>
      coinListMemoryDataSource.getFavouriteCoins();

  @override
  void toggleCoinAsFavourite(Coin coin) {
    final favCoins = coinListMemoryDataSource.getFavouriteCoins();
    if (favCoins.contains(coin)) {
      coinListMemoryDataSource.removeFavourite(coin);
    } else {
      coinListMemoryDataSource.addFavourite(coin);
    }
  }
}
