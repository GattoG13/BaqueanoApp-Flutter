// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ambienteDePrueba_cleanArq/desafio_integradorFase3/features/notas/application/cubit/notas_cubit.dart'
    as _i536;
import 'package:ambienteDePrueba_cleanArq/desafio_integradorFase3/features/notas/domain/repositories/nota_repository.dart'
    as _i90;
import 'package:ambienteDePrueba_cleanArq/desafio_integradorFase3/features/notas/domain/services/gestor_notas.dart'
    as _i234;
import 'package:ambienteDePrueba_cleanArq/desafio_integradorFase3/features/notas/infrastructure/repositories/nota_repository_impl.dart'
    as _i977;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i90.NotaRepository>(() => _i977.NotaRepositoryImpl());
    gh.factory<_i234.GestorNotas>(
      () => _i234.GestorNotas(gh<_i90.NotaRepository>()),
    );
    gh.factory<_i536.NotasCubit>(
      () => _i536.NotasCubit(gh<_i234.GestorNotas>()),
    );
    return this;
  }
}
