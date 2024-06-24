// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter/cupertino.dart' as _i6;
import 'package:flutter/material.dart' as _i22;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:medica/core/injection/api_module.dart' as _i21;
import 'package:medica/core/injection/di_app_module.dart' as _i31;
import 'package:medica/core/injection/preferences_module.dart' as _i29;
import 'package:medica/core/injection/secure_storage_module.dart' as _i30;
import 'package:medica/features/appointment/business_logic/appointment_bloc.dart'
    as _i23;
import 'package:medica/features/appointment/data/provider/appointment_provider.dart'
    as _i9;
import 'package:medica/features/appointment/data/repository/appointment_repository.dart'
    as _i17;
import 'package:medica/features/doctor/business_logic/search_doctor_bloc.dart'
    as _i19;
import 'package:medica/features/doctor/data/provider/search_doctor_provider.dart'
    as _i10;
import 'package:medica/features/doctor/data/repository/search_doctor_repository.dart'
    as _i16;
import 'package:medica/features/onboarding/onboarding_cubit.dart' as _i8;
import 'package:medica/features/onboarding/onboarding_repo.dart' as _i7;
import 'package:medica/features/profile/business_logic/profile_bloc.dart'
    as _i18;
import 'package:medica/features/profile/data/provider/profile_provider.dart'
    as _i13;
import 'package:medica/features/profile/data/repository/profile_repository.dart'
    as _i14;
import 'package:medica/features/registration/business_logic/forget_password/forget_password_cubit.dart'
    as _i27;
import 'package:medica/features/registration/business_logic/reset_password/reset_password_cubit.dart'
    as _i28;
import 'package:medica/features/registration/business_logic/sign_in/sign_in_cubit.dart'
    as _i25;
import 'package:medica/features/registration/business_logic/sign_up/sign_up_cubit.dart'
    as _i26;
import 'package:medica/features/registration/business_logic/verify_code/verify_code_cubit.dart'
    as _i24;
import 'package:medica/features/registration/data/provider/auth_provider.dart'
    as _i11;
import 'package:medica/features/registration/data/provider/reset_password_provider.dart'
    as _i12;
import 'package:medica/features/registration/data/repository/auth_repository.dart'
    as _i15;
import 'package:medica/features/registration/data/repository/reset_password_repo.dart'
    as _i20;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

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
    final preferencesModule = _$PreferencesModule();
    final secureStorageModule = _$SecureStorageModule();
    final apiModule = _$ApiModule();
    final diAppModule = _$DiAppModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => preferencesModule.prefs,
      preResolve: true,
    );
    gh.factory<_i4.FlutterSecureStorage>(
        () => secureStorageModule.createSecureStorage);
    gh.lazySingleton<_i5.Dio>(() => apiModule.createDio());
    gh.lazySingleton<_i6.GlobalKey<_i6.NavigatorState>>(
        () => diAppModule.navigationKey);
    gh.factory<String>(
      () => apiModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i7.OnboardingRepo>(
        () => _i7.OnboardingRepo(preferences: gh<_i3.SharedPreferences>()));
    gh.factory<_i8.OnboardingCubit>(
        () => _i8.OnboardingCubit(gh<_i7.OnboardingRepo>()));
    gh.factory<_i9.AppointmentProvider>(() => _i9.AppointmentProvider(
          gh<_i5.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i10.SearchDoctorProvider>(() => _i10.SearchDoctorProvider(
          gh<_i5.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i11.AuthProvider>(() => _i11.AuthProvider(
          gh<_i5.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i12.ResetPasswordProvider>(() => _i12.ResetPasswordProvider(
          gh<_i5.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i13.ProfileProvider>(() => _i13.ProfileProvider(
          gh<_i5.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i14.ProfileRepository>(
        () => _i14.ProfileRepository(gh<_i13.ProfileProvider>()));
    gh.factory<_i15.AuthRepository>(() => _i15.AuthRepository(
          authProvider: gh<_i11.AuthProvider>(),
          storage: gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i16.SearchDoctorRepository>(() => _i16.SearchDoctorRepository(
        searchDoctorProvider: gh<_i10.SearchDoctorProvider>()));
    gh.factory<_i17.AppointmentRepository>(
        () => _i17.AppointmentRepository(gh<_i9.AppointmentProvider>()));
    gh.factory<_i18.ProfileBloc>(() => _i18.ProfileBloc(
          gh<_i14.ProfileRepository>(),
          gh<_i15.AuthRepository>(),
        ));
    gh.factory<_i19.SearchDoctorBloc>(
        () => _i19.SearchDoctorBloc(gh<_i16.SearchDoctorRepository>()));
    gh.factory<_i20.ResetPasswordRepository>(() => _i20.ResetPasswordRepository(
        resetPasswordProvider: gh<_i12.ResetPasswordProvider>()));
    gh.factory<_i21.TokenInterceptor>(() => _i21.TokenInterceptor(
          authRepo: gh<_i15.AuthRepository>(),
          navigatorKey: gh<_i22.GlobalKey<_i22.NavigatorState>>(),
        ));
    gh.factory<_i23.AppointmentBloc>(
        () => _i23.AppointmentBloc(gh<_i17.AppointmentRepository>()));
    gh.factory<_i24.VerifyCodeCubit>(() => _i24.VerifyCodeCubit(
          gh<_i20.ResetPasswordRepository>(),
          gh<_i15.AuthRepository>(),
        ));
    gh.factory<_i25.SignInCubit>(
        () => _i25.SignInCubit(gh<_i15.AuthRepository>()));
    gh.factory<_i26.SignUpCubit>(
        () => _i26.SignUpCubit(gh<_i15.AuthRepository>()));
    gh.factory<_i27.ForgetPasswordCubit>(
        () => _i27.ForgetPasswordCubit(gh<_i20.ResetPasswordRepository>()));
    gh.factory<_i28.ResetPasswordCubit>(
        () => _i28.ResetPasswordCubit(gh<_i20.ResetPasswordRepository>()));
    return this;
  }
}

class _$PreferencesModule extends _i29.PreferencesModule {}

class _$SecureStorageModule extends _i30.SecureStorageModule {}

class _$ApiModule extends _i21.ApiModule {}

class _$DiAppModule extends _i31.DiAppModule {}
