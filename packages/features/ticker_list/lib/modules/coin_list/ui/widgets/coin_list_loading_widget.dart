import 'package:flutter/material.dart';

class CoinListLoadingWidget extends StatelessWidget {
  const CoinListLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
