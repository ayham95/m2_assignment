import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

final getIt = GetIt.instance;

void setUpHttpClient() {
  if (!getIt.isRegistered<Client>()) {
    getIt.registerSingleton<Client>(Client());
  }
}
