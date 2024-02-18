import 'package:candy/candy.dart';
import 'package:flutter/material.dart';
import 'package:ticker_tile/modules/ticker_tile/domain/entity/ticker.dart';

class TickerWidgetBody extends StatelessWidget {
  final Ticker ticker;
  final String symbol;
  final String name;
  final String imageUrl;
  final bool isFavourite;

  const TickerWidgetBody({
    Key? key,
    required this.ticker,
    required this.symbol,
    required this.name,
    required this.imageUrl,
    required this.isFavourite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isFavourite ? opaqueBackground : Colors.transparent,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        TickerIcon(url: imageUrl),
                        const Width(8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              symbol.toUpperCase(),
                              style: const TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                name,
                                style: const TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '\$${ticker.rate.toString()}',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  TickerPercentageChange(
                    percentage: ticker.changePercentage,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
