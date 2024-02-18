import 'package:candy/candy.dart';
import 'package:flutter/material.dart';
import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';
import 'package:ticker_tile/ticker_tile.dart';

class CoinListWidgetBody extends StatelessWidget {
  final List<Coin> coins;
  final List<Coin> favouriteCoins;
  final ValueChanged<String>? onChanged;
  final Function(Coin) onTap;
  final Function() onFavouriteTap;

  const CoinListWidgetBody({
    super.key,
    required this.coins,
    required this.favouriteCoins,
    required this.onChanged,
    required this.onTap,
    required this.onFavouriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    onChanged: onChanged,
                    borderRadius: BorderRadius.circular(24),
                    hintText: 'Search',
                    style: CustomTextFieldStyle.small,
                  ),
                ),
                IconButton(
                  onPressed: onFavouriteTap,
                  icon: const Icon(FontAwesomeIcons.solidStar),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final coin = coins[index];
              return ScaleOnTapAnimation(
                onPressed: () => onTap.call(coin),
                child: TickerWidget(
                  key: ValueKey(coin.symbol),
                  symbol: coin.symbol.toLowerCase(),
                  name: coin.name,
                  imageUrl: coin.imageUrl,
                  isFavourite: coin.isFavourite,
                ),
              );
            },
            childCount: coins.length,
          ),
        ),
      ],
    );
  }
}
