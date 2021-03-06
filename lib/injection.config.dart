// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i18;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i17;
import 'application/recipe/recipe_actor/recipe_actor_bloc.dart' as _i12;
import 'application/recipe/recipe_form/recipe_form_bloc.dart' as _i13;
import 'application/recipe/recipe_watcher/recipe_watcher_bloc.dart' as _i14;
import 'application/settings/settings_bloc.dart' as _i15;
import 'application/settings/settings_watcher/settings_watcher_bloc.dart'
    as _i16;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/recipes/i_recipe_repository.dart' as _i8;
import 'domain/settings/i_settings_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i19;
import 'infrastructure/recipes/recipe_repository.dart' as _i9;
import 'infrastructure/settings/settings_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() =>
      _i7.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i8.IRecipeRepository>(
      () => _i9.RecipeRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.ISettingsRepository>(() => _i11.SettingsRepository());
  gh.factory<_i12.RecipeActorBloc>(
      () => _i12.RecipeActorBloc(get<_i8.IRecipeRepository>()));
  gh.factory<_i13.RecipeFormBloc>(
      () => _i13.RecipeFormBloc(get<_i8.IRecipeRepository>()));
  gh.factory<_i14.RecipeWatcherBloc>(
      () => _i14.RecipeWatcherBloc(get<_i8.IRecipeRepository>()));
  gh.factory<_i15.SettingsBloc>(() => _i15.SettingsBloc(
      get<_i10.ISettingsRepository>(), get<_i8.IRecipeRepository>()));
  gh.factory<_i16.SettingsWatcherBloc>(
      () => _i16.SettingsWatcherBloc(get<_i10.ISettingsRepository>()));
  gh.factory<_i17.SignInFormBloc>(
      () => _i17.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i19.FirebaseInjectableModule {}
