import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticker_tile/modules/shared/di/injection.dart';
import 'package:ticker_tile/modules/ticker_tile/ui/bloc/ticker_bloc.dart';
import 'package:ticker_tile/modules/ticker_tile/ui/widgets/ticker_loading_widget.dart';
import 'package:ticker_tile/modules/ticker_tile/ui/widgets/ticker_widget_body.dart';

class TickerWidget extends StatefulWidget {
  final String symbol;
  final String name;
  final String imageUrl;
  final bool isFavourite;

  const TickerWidget({
    Key? key,
    required this.symbol,
    required this.name,
    required this.imageUrl,
    required this.isFavourite,
  }) : super(key: key);

  @override
  State<TickerWidget> createState() => _TickerWidgetState();
}

class _TickerWidgetState extends State<TickerWidget>
    with AutomaticKeepAliveClientMixin {
  final TickerBloc _bloc = locator();

  @override
  void initState() {
    _bloc.add(LoadTickerEvent(symbol: widget.symbol));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<TickerBloc, TickerState>(
      bloc: _bloc,
      buildWhen: _buildWhen,
      listenWhen: _listenWhen,
      builder: _onStateChangeBuilder,
      listener: (BuildContext context, TickerState state) {},
    );
  }

  bool _buildWhen(TickerState previous, TickerState current) {
    return current is TickerLoadingState || current is TickerIdleState;
  }

  bool _listenWhen(TickerState previous, TickerState current) => false;

  Widget _onStateChangeBuilder(BuildContext context, TickerState state) {
    if (state is TickerIdleState) {
      return TickerWidgetBody(
        ticker: state.ticker,
        symbol: widget.symbol,
        name: widget.name,
        imageUrl: widget.imageUrl,
        isFavourite: widget.isFavourite,
      );
    }
    if (state is TickerErrorState) {
      return const SizedBox();
    }
    return const TickerLoadingWidget();
  }

  @override
  bool get wantKeepAlive => true;
}
