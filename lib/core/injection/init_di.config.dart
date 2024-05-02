// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i5;
import 'package:flutter/material.dart' as _i15;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:medica/core/injection/api_module.dart' as _i14;
import 'package:medica/core/injection/di_app_module.dart' as _i21;
import 'package:medica/core/injection/preferences_module.dart' as _i22;
import 'package:medica/core/injection/secure_storage_module.dart' as _i20;
import 'package:medica/onboarding/onboarding_cubit.dart' as _i18;
import 'package:medica/onboarding/onboarding_repo.dart' as _i9;
import 'package:medica/registration/business_logic/forget_password/forget_password_cubit.dart'
    as _i17;
import 'package:medica/registration/business_logic/reset_password/reset_password_cubit.dart'
    as _i19;
import 'package:medica/registration/business_logic/sign_in/sign_in_cubit.dart'
    as _i12;
import 'package:medica/registration/business_logic/sign_up/sign_up_cubit.dart'
    as _i13;
import 'package:medica/registration/business_logic/verify_code/verify_code_cubit.dart'
    as _i16;
import 'package:medica/registration/data/provider/auth_provider.dart' as _i7;
import 'package:medica/registration/data/provider/reset_password_provider.dart'
    as _i10;
import 'package:medica/registration/data/repository/auth_repository.dart'
    as _i8;
import 'package:medica/registration/data/repository/reset_password_repo.dart'
    as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiModule = _$ApiModule();
    final secureStorageModule = _$SecureStorageModule();
    final diAppModule = _$DiAppModule();
    final preferencesModule = _$PreferencesModule();
    gh.lazySingleton<_i3.Dio>(() => apiModule.createDio());
    gh.factory<_i4.FlutterSecureStorage>(
        () => secureStorageModule.createSecureStorage);
    gh.lazySingleton<_i5.GlobalKey<_i5.NavigatorState>>(
        () => diAppModule.navigationKey);
    await gh.factoryAsync<_i6.SharedPreferences>(
      () => preferencesModule.prefs,
      preResolve: true,
    );
    gh.factory<String>(
      () => apiModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i7.AuthProvider>(() => _i7.AuthProvider(
          gh<_i3.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i8.AuthRepository>(() => _i8.AuthRepository(
          authProvider: gh<_i7.AuthProvider>(),
          storage: gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i9.OnboardingRepo>(
        () => _i9.OnboardingRepo(preferences: gh<_i6.SharedPreferences>()));
    gh.factory<_i10.ResetPasswordProvider>(() => _i10.ResetPasswordProvider(
          gh<_i3.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i11.ResetPasswordRepository>(() => _i11.ResetPasswordRepository(
        resetPasswordProvider: gh<_i10.ResetPasswordProvider>()));
    gh.factory<_i12.SignInCubit>(
        () => _i12.SignInCubit(gh<_i8.AuthRepository>()));
    gh.factory<_i13.SignUpCubit>(
        () => _i13.SignUpCubit(gh<_i8.AuthRepository>()));
    gh.factory<_i14.TokenInterceptor>(() => _i14.TokenInterceptor(
          authRepo: gh<_i8.AuthRepository>(),
          navigatorKey: gh<_i15.GlobalKey<_i15.NavigatorState>>(),
        ));
    gh.factory<_i16.VerifyCodeCubit>(() => _i16.VerifyCodeCubit(
          gh<_i11.ResetPasswordRepository>(),
          gh<_i8.AuthRepository>(),
        ));
    gh.factory<_i17.ForgetPasswordCubit>(
        () => _i17.ForgetPasswordCubit(gh<_i11.ResetPasswordRepository>()));
    gh.factory<_i18.OnboardingCubit>(
        () => _i18.OnboardingCubit(gh<_i9.OnboardingRepo>()));
    gh.factory<_i19.ResetPasswordCubit>(
        () => _i19.ResetPasswordCubit(gh<_i11.ResetPasswordRepository>()));
    return this;
  }
}

class _$ApiModule extends _i14.ApiModule {}

class _$SecureStorageModule extends _i20.SecureStorageModule {}

class _$DiAppModule extends _i21.DiAppModule {}

class _$PreferencesModule extends _i22.PreferencesModule {}
