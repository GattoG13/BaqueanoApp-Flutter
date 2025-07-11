// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:huerta_inteligente_app/features/huerta_inteligente/application/huerta_cubit.dart'
    as _i685;
import 'package:huerta_inteligente_app/features/huerta_inteligente/domain/repositories/cultivo_repository.dart'
    as _i970;
import 'package:huerta_inteligente_app/features/huerta_inteligente/domain/services/gestor_cultivos.dart'
    as _i259;
import 'package:huerta_inteligente_app/features/huerta_inteligente/infraestructure/repositories/cultivo_repository_impl.dart'
    as _i693;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i970.CultivoRepository>(
      () => _i693.CultivoRepositoryImpl(),
    );
    gh.factory<_i259.GestorCultivos>(
      () => _i259.GestorCultivos(gh<_i970.CultivoRepository>()),
    );
    gh.factory<_i685.HuertaCubit>(
      () => _i685.HuertaCubit(gh<_i259.GestorCultivos>()),
    );
    return this;
  }
}
