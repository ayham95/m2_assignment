import 'package:injectable/injectable.dart';
import 'package:ticker_tile/modules/ticker_tile/data/responses/ticker_response.dart';
import 'package:ticker_tile/modules/ticker_tile/domain/entity/ticker.dart';

@Injectable()
class TickerMapper {
  Ticker map(TickerResponse source) {
    return Ticker(
      changePercentage: source.changePercentage,
      tickerSymbol: source.tickerSymbol,
      rate: double.parse(source.rate),
    );
  }
}
