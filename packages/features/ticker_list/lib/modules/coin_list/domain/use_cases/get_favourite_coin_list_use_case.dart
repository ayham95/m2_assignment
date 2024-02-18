import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:result/result.dart';
import 'package:ticker_list/modules/coin_list/domain/coin_list_repository.dart';
import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';

@Injectable()
class GetFavouriteCoinListUseCase {
  final CoinListRepository _repository;

  GetFavouriteCoinListUseCase(this._repository);

  List<Coin> call() => _repository.getFavouriteCoinList();
}
