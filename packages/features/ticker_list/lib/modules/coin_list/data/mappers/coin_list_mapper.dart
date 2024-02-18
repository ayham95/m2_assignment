import 'package:injectable/injectable.dart';
import 'package:ticker_list/modules/coin_list/data/responses/coin_list_response.dart';
import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';

@Injectable()
class CoinListMapper {
  List<Coin> map(CoinListResponse source) {
    return source.coins
        .map((e) => Coin(symbol: e.symbol, name: e.name, imageUrl: e.iconUrl))
        .toList();
  }
}
