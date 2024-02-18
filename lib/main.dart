import 'package:candy/foundation/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:m2/di/app_injection.dart';
import 'package:m2/di/global_get_it_dependencies.dart';
import 'package:ticker_list/ticker_list.dart';

void main() async {
  await setupFeaturesDependencies();
  await setupGlobalGetItDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M2 Assignment',
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      home: const Scaffold(
        body: SafeArea(child: CoinListWidget()),
      ),
    );
  }
}
