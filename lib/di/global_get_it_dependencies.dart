import 'dart:async';

import 'package:m2/services/service_locator.dart';

/// Sets up global get it dependencies that will be available during the whole
/// lifecycle of the app.
Future<void> setupGlobalGetItDependencies() async {
  // Be very careful with the order of the locators, some of them might depend
  // on others
  setUpHttpClient();
}
