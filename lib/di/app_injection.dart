import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:m2/di/app_injection.config.dart';
import 'package:ticker_tile/modules/shared/di/injection.module.dart';
import 'package:ticker_list/modules/shared/di/injection.module.dart';

final locator = GetIt.instance;

@InjectableInit(
  externalPackageModulesAfter: [
    ExternalModule(TickerTilePackageModule),
    ExternalModule(TickerListPackageModule),
  ],
  includeMicroPackages: false,
)
FutureOr<void> setupFeaturesDependencies() => locator.init();
