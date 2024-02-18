import 'package:injectable/injectable.dart';
import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';

@Singleton()
class CoinListMemoryDataSource {
  //This could be Hive or API as well.
  Set<Coin> favouriteCoins = {};
  List<Coin> coins = [];

  void addFavourite(Coin coin) {
    final newCoin = _toggleFavouriteInCoins(coin, true);
    if (newCoin == null) return;
    favouriteCoins.add(newCoin);
    favouriteCoins = Set.from(favouriteCoins);
  }

  void removeFavourite(Coin coin) {
    final newCoin = _toggleFavouriteInCoins(coin, false);
    if (newCoin == null) return;
    favouriteCoins.removeWhere((e) => e.symbol == coin.symbol);
    favouriteCoins = Set.from(favouriteCoins);
  }

  List<Coin> getFavouriteCoins() => favouriteCoins.toList();

  List<Coin> getCoins() => coins;

  void setCache(List<Coin> coins) {
    this.coins = coins;
  }

  Coin? _toggleFavouriteInCoins(Coin coin, bool fav) {
    final index = coins.indexWhere((c) => c.symbol == coin.symbol);
    if (index != -1) {
      coins[index] = coins[index].copyWith(isFavourite: fav);
      // It should be immutable and immutable object should always be copied rather than modified to ensure equality
      coins = List.from(coins);
      return coins[index];
    }
    return null;
  }
}
