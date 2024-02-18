import 'package:candy/candy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticker_list/modules/coin_list/domain/entity/coin.dart';
import 'package:ticker_list/modules/coin_list/ui/bloc/coin_list_bloc.dart';
import 'package:ticker_tile/ticker_tile.dart';

// This should be a separate widget.
class FavouriteCoinsWidget extends StatelessWidget {
  const FavouriteCoinsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: BlocBuilder(
          bloc: context.read<CoinListBloc>(),
          builder: (ctx, state) {
            if (state is CoinListIdleState) {
              return ListView.builder(
                itemBuilder: (_, index) {
                  final coin = state.favouriteCoins[index];
                  return ScaleOnTapAnimation(
                    onPressed: () => context.read<CoinListBloc>().add(
                      ToggleAsFavouriteEvent(coin: coin),
                    ),
                    child: TickerWidget(
                      key: ValueKey(coin.symbol),
                      symbol: coin.symbol.toLowerCase(),
                      name: coin.name,
                      imageUrl: coin.imageUrl,
                      isFavourite: coin.isFavourite,
                    ),
                  );
                },
                itemCount: state.favouriteCoins.length,
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
