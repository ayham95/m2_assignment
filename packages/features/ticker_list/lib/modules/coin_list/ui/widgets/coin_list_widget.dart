import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticker_list/modules/coin_list/ui/bloc/coin_list_bloc.dart';
import 'package:ticker_list/modules/coin_list/ui/widgets/coin_list_loading_widget.dart';
import 'package:ticker_list/modules/coin_list/ui/widgets/coin_list_widget_body.dart';
import 'package:ticker_list/modules/coin_list/ui/widgets/favourite_coin_list_widget.dart';
import 'package:ticker_list/modules/shared/di/injection.dart';

class CoinListWidget extends StatefulWidget {
  const CoinListWidget({Key? key}) : super(key: key);

  @override
  State<CoinListWidget> createState() => _CoinListWidgetState();
}

class _CoinListWidgetState extends State<CoinListWidget> {
  final CoinListBloc _bloc = locator();

  @override
  void initState() {
    _bloc.add(const LoadCoinListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoinListBloc, CoinListState>(
      bloc: _bloc,
      buildWhen: _buildWhen,
      listenWhen: _listenWhen,
      builder: _onStateChangeBuilder,
      listener: (BuildContext context, CoinListState state) {},
    );
  }

  bool _buildWhen(CoinListState previous, CoinListState current) {
    return current is CoinListLoadingState || current is CoinListIdleState;
  }

  bool _listenWhen(CoinListState previous, CoinListState current) => false;

  Widget _onStateChangeBuilder(BuildContext context, CoinListState state) {
    if (state is CoinListIdleState) {
      return CoinListWidgetBody(
        coins: state.coins,
        favouriteCoins: state.favouriteCoins,
        onChanged: (query) {
          _bloc.add(SearchCoinListEvent(query: query));
        },
        onFavouriteTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: _bloc,
                child: FavouriteCoinsWidget(),
              ),
            ),
          );
        },
        onTap: (coin) {
          _bloc.add(ToggleAsFavouriteEvent(coin: coin));
        },
      );
    }
    return const CoinListLoadingWidget();
  }
}
