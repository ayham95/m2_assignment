import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:result/result.dart';
import 'package:ticker_list/modules/coin_list/domain/coin_list_repository.dart';
import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';

@Injectable()
class GetCoinListUseCase {
  final CoinListRepository _repository;

  GetCoinListUseCase(this._repository);

  Future<Result<List<Coin>, Exception>> call() async {
    try {
      final result = await _repository.getCoinList();
      return ValueResult(result);
    } catch (e) {
      return ErrorResult(Exception(e));
    }
  }
}
