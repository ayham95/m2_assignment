//@GeneratedMicroModule;TickerTilePackageModule;package:ticker_tile/modules/shared/di/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:injectable/injectable.dart' as _i1;
import 'package:ticker_tile/modules/ticker_tile/data/mappers/ticker_mapper.dart'
    as _i3;
import 'package:ticker_tile/modules/ticker_tile/data/repositories/ticker_repository_impl.dart'
    as _i6;
import 'package:ticker_tile/modules/ticker_tile/data/sources/ticker_remote_data_source.dart'
    as _i4;
import 'package:ticker_tile/modules/ticker_tile/domain/ticker_repository.dart'
    as _i5;
import 'package:ticker_tile/modules/ticker_tile/domain/use_cases/subscribe_to_ticker_use_case.dart'
    as _i7;
import 'package:ticker_tile/modules/ticker_tile/ui/bloc/ticker_bloc.dart'
    as _i8;

class TickerTilePackageModule extends _i1.MicroPackageModule {
  @override
  _i2.FutureOr<void> init(_i1.GetItHelper gh) {
    gh.factory<_i3.TickerMapper>(() => _i3.TickerMapper());
    gh.factory<_i4.TickerRemoteDataSource>(() => _i4.TickerRemoteDataSource());
    gh.factory<_i5.TickerRepository>(() => _i6.TickerRepositoryImpl(
          gh<_i3.TickerMapper>(),
          gh<_i4.TickerRemoteDataSource>(),
        ));
    gh.factory<_i7.SubscribeToTickerUseCase>(
        () => _i7.SubscribeToTickerUseCase(gh<_i5.TickerRepository>()));
    gh.factory<_i8.TickerBloc>(
        () => _i8.TickerBloc(gh<_i7.SubscribeToTickerUseCase>()));
  }
}
