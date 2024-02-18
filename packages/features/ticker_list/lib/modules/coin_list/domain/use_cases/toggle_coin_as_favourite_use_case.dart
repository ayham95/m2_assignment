import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:result/result.dart';
import 'package:ticker_list/modules/coin_list/domain/coin_list_repository.dart';
import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';

@Injectable()
class ToggleCoinAsFavouriteUseCase {
  final CoinListRepository _repository;

  ToggleCoinAsFavouriteUseCase(this._repository);

  void call(Coin coin) => _repository.toggleCoinAsFavourite(coin);
}
