//@GeneratedMicroModule;TickerListPackageModule;package:ticker_list/modules/shared/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:http/http.dart' as _i6;
import 'package:injectable/injectable.dart' as _i1;
import 'package:ticker_list/modules/coin_list/data/mappers/coin_list_mapper.dart'
    as _i3;
import 'package:ticker_list/modules/coin_list/data/repositories/coin_list_repository_impl.dart'
    as _i8;
import 'package:ticker_list/modules/coin_list/data/sources/coin_memory_data_source.dart'
    as _i4;
import 'package:ticker_list/modules/coin_list/data/sources/coin_remote_data_source.dart'
    as _i5;
import 'package:ticker_list/modules/coin_list/domain/coin_list_repository.dart'
    as _i7;
import 'package:ticker_list/modules/coin_list/domain/use_cases/get_coin_list_use_case.dart'
    as _i9;
import 'package:ticker_list/modules/coin_list/domain/use_cases/get_favourite_coin_list_use_case.dart'
    as _i10;
import 'package:ticker_list/modules/coin_list/domain/use_cases/search_coin_list_use_case.dart'
    as _i11;
import 'package:ticker_list/modules/coin_list/domain/use_cases/toggle_coin_as_favourite_use_case.dart'
    as _i12;
import 'package:ticker_list/modules/coin_list/ui/bloc/coin_list_bloc.dart'
    as _i13;

class TickerListPackageModule extends _i1.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.CoinListMapper>(() => _i3.CoinListMapper());
    gh.singleton<_i4.CoinListMemoryDataSource>(_i4.CoinListMemoryDataSource());
    gh.factory<_i5.CoinListRemoteDataSource>(
        () => _i5.CoinListRemoteDataSource(gh<_i6.Client>()));
    gh.factory<_i7.CoinListRepository>(() => _i8.CoinListRepositoryImpl(
          gh<_i3.CoinListMapper>(),
          gh<_i5.CoinListRemoteDataSource>(),
          gh<_i4.CoinListMemoryDataSource>(),
        ));
    gh.factory<_i9.GetCoinListUseCase>(
        () => _i9.GetCoinListUseCase(gh<_i7.CoinListRepository>()));
    gh.factory<_i10.GetFavouriteCoinListUseCase>(
        () => _i10.GetFavouriteCoinListUseCase(gh<_i7.CoinListRepository>()));
    gh.factory<_i11.SearchCoinListUseCase>(() => _i11.SearchCoinListUseCase());
    gh.factory<_i12.ToggleCoinAsFavouriteUseCase>(
        () => _i12.ToggleCoinAsFavouriteUseCase(gh<_i7.CoinListRepository>()));
    gh.factory<_i13.CoinListBloc>(() => _i13.CoinListBloc(
          gh<_i9.GetCoinListUseCase>(),
          gh<_i11.SearchCoinListUseCase>(),
          gh<_i12.ToggleCoinAsFavouriteUseCase>(),
          gh<_i10.GetFavouriteCoinListUseCase>(),
        ));
  }
}
