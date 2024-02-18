import 'dart:convert';

import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:ticker_list/modules/coin_list/data/responses/coin_list_response.dart';

@Injectable()
class CoinListRemoteDataSource {
  final Client client;

  CoinListRemoteDataSource(this.client);

  Future<CoinListResponse> getCoinList() async {
    const baseUrl =
        'api.coinranking.com'; // This should be in an environment ignored file
    final result = await client.get(
      Uri.https(baseUrl, '/v2/coins', {'scopeLimit': '25'}),
      headers: {
        'x-access-token':
            'coinrankingb3c4f96dae58fdcb4d4b9919d488992e5f45b18a0c64c664'
        // This should be in an environment ignored file
      },
    );
    return CoinListResponse.fromJson(json.decode(result.body)['data']);
  }
}
