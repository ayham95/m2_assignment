import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';

abstract class CoinListRepository {
  Future<List<Coin>> getCoinList();
  List<Coin> getFavouriteCoinList();
  void toggleCoinAsFavourite(Coin coin);
}
