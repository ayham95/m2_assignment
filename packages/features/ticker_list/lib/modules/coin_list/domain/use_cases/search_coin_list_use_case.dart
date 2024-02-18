import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:result/result.dart';
import 'package:ticker_list/modules/coin_list/domain/coin_list_repository.dart';
import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';

@Injectable()
class SearchCoinListUseCase {
  List<Coin> call({
    required String query,
    required List<Coin> coins,
  }) {
    return coins
        .where((element) => element.symbol.toLowerCase().contains(
              query.toLowerCase(),
            ))
        .toList();
  }
}
