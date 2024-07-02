// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter/cupertino.dart' as _i6;
import 'package:flutter/material.dart' as _i28;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:medica/core/injection/api_module.dart' as _i27;
import 'package:medica/core/injection/di_app_module.dart' as _i43;
import 'package:medica/core/injection/preferences_module.dart' as _i41;
import 'package:medica/core/injection/secure_storage_module.dart' as _i42;
import 'package:medica/features/appointment/business_logic/create_appointment/appointment_bloc.dart'
    as _i29;
import 'package:medica/features/appointment/business_logic/doctor_appointment/doctor_appointment_bloc.dart'
    as _i37;
import 'package:medica/features/appointment/business_logic/patient_appointment/patient_appointment_bloc.dart'
    as _i38;
import 'package:medica/features/appointment/business_logic/service/appointment_service.dart'
    as _i23;
import 'package:medica/features/appointment/data/provider/appointment_provider.dart'
    as _i9;
import 'package:medica/features/appointment/data/repository/appointment_repository.dart'
    as _i21;
import 'package:medica/features/doctor/business_logic/doctor_search_bloc.dart'
    as _i24;
import 'package:medica/features/doctor/data/provider/search_doctor_provider.dart'
    as _i10;
import 'package:medica/features/doctor/data/repository/search_doctor_repository.dart'
    as _i20;
import 'package:medica/features/home/business_logic/home_doctor/home_doctor_bloc.dart'
    as _i33;
import 'package:medica/features/home/business_logic/home_patient/home_patient_bloc.dart'
    as _i32;
import 'package:medica/features/onboarding/onboarding_cubit.dart' as _i8;
import 'package:medica/features/onboarding/onboarding_repo.dart' as _i7;
import 'package:medica/features/patient/business_logic/patient_search_bloc.dart'
    as _i31;
import 'package:medica/features/patient/data/provider/patient_history_provider.dart'
    as _i11;
import 'package:medica/features/patient/data/provider/patient_search_provider.dart'
    as _i12;
import 'package:medica/features/patient/data/repository/patient_history_repository.dart'
    as _i17;
import 'package:medica/features/patient/data/repository/patient_search_repository.dart'
    as _i16;
import 'package:medica/features/profile/business_logic/profile/profile_bloc.dart'
    as _i22;
import 'package:medica/features/profile/business_logic/profile_edit/profile_edit_bloc.dart'
    as _i34;
import 'package:medica/features/profile/data/provider/profile_provider.dart'
    as _i13;
import 'package:medica/features/profile/data/repository/profile_repository.dart'
    as _i18;
import 'package:medica/features/registration/business_logic/forget_password/forget_password_cubit.dart'
    as _i39;
import 'package:medica/features/registration/business_logic/reset_password/reset_password_cubit.dart'
    as _i40;
import 'package:medica/features/registration/business_logic/sign_in/sign_in_cubit.dart'
    as _i35;
import 'package:medica/features/registration/business_logic/sign_up/sign_up_cubit.dart'
    as _i36;
import 'package:medica/features/registration/business_logic/verify_code/verify_code_cubit.dart'
    as _i30;
import 'package:medica/features/registration/data/provider/auth_provider.dart'
    as _i14;
import 'package:medica/features/registration/data/provider/reset_password_provider.dart'
    as _i15;
import 'package:medica/features/registration/data/repository/auth_repository.dart'
    as _i19;
import 'package:medica/features/registration/data/repository/reset_password_repo.dart'
    as _i26;
import 'package:medica/features/splash/business_logic/splash_bloc.dart' as _i25;
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
    gh.factory<_i11.PatientHistoryProvider>(() => _i11.PatientHistoryProvider(
          gh<_i5.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i12.PatientSearchProvider>(() => _i12.PatientSearchProvider(
          gh<_i5.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i13.ProfileProvider>(() => _i13.ProfileProvider(
          gh<_i5.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i14.AuthProvider>(() => _i14.AuthProvider(
          gh<_i5.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i15.ResetPasswordProvider>(() => _i15.ResetPasswordProvider(
          gh<_i5.Dio>(),
          baseUrl: gh<String>(instanceName: 'baseUrl'),
        ));
    gh.factory<_i16.PatientSearchRepository>(
        () => _i16.PatientSearchRepository(gh<_i12.PatientSearchProvider>()));
    gh.factory<_i17.PatientHistoryRepository>(
        () => _i17.PatientHistoryRepository(gh<_i11.PatientHistoryProvider>()));
    gh.factory<_i18.ProfileRepository>(
        () => _i18.ProfileRepository(gh<_i13.ProfileProvider>()));
    gh.factory<_i19.AuthRepository>(() => _i19.AuthRepository(
          authProvider: gh<_i14.AuthProvider>(),
          storage: gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i20.SearchDoctorRepository>(() => _i20.SearchDoctorRepository(
        searchDoctorProvider: gh<_i10.SearchDoctorProvider>()));
    gh.factory<_i21.AppointmentRepository>(
        () => _i21.AppointmentRepository(gh<_i9.AppointmentProvider>()));
    gh.factory<_i22.ProfileBloc>(() => _i22.ProfileBloc(
          gh<_i18.ProfileRepository>(),
          gh<_i19.AuthRepository>(),
        ));
    gh.factory<_i23.AppointmentsService>(() => _i23.AppointmentsService(
          gh<_i9.AppointmentProvider>(),
          patientAppointmentProvider: gh<_i9.AppointmentProvider>(),
          patientProvider: gh<_i12.PatientSearchProvider>(),
          doctorProvider: gh<_i10.SearchDoctorProvider>(),
        ));
    gh.factory<_i24.DoctorSearchBloc>(
        () => _i24.DoctorSearchBloc(gh<_i20.SearchDoctorRepository>()));
    gh.factory<_i25.SplashBloc>(() => _i25.SplashBloc(
          gh<_i19.AuthRepository>(),
          gh<_i18.ProfileRepository>(),
        ));
    gh.factory<_i26.ResetPasswordRepository>(() => _i26.ResetPasswordRepository(
        resetPasswordProvider: gh<_i15.ResetPasswordProvider>()));
    gh.factory<_i27.TokenInterceptor>(() => _i27.TokenInterceptor(
          authRepo: gh<_i19.AuthRepository>(),
          navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>(),
        ));
    gh.factory<_i29.AppointmentBloc>(
        () => _i29.AppointmentBloc(gh<_i21.AppointmentRepository>()));
    gh.factory<_i30.VerifyCodeCubit>(() => _i30.VerifyCodeCubit(
          gh<_i26.ResetPasswordRepository>(),
          gh<_i19.AuthRepository>(),
        ));
    gh.factory<_i31.PatientSearchBloc>(() => _i31.PatientSearchBloc(
          gh<_i16.PatientSearchRepository>(),
          gh<_i17.PatientHistoryRepository>(),
        ));
    gh.factory<_i32.HomePatientBloc>(
        () => _i32.HomePatientBloc(gh<_i18.ProfileRepository>()));
    gh.factory<_i33.HomeDoctorBloc>(
        () => _i33.HomeDoctorBloc(gh<_i18.ProfileRepository>()));
    gh.factory<_i34.ProfileEditBloc>(
        () => _i34.ProfileEditBloc(gh<_i18.ProfileRepository>()));
    gh.factory<_i35.SignInCubit>(
        () => _i35.SignInCubit(gh<_i19.AuthRepository>()));
    gh.factory<_i36.SignUpCubit>(
        () => _i36.SignUpCubit(gh<_i19.AuthRepository>()));
    gh.factory<_i37.DoctorAppointmentBloc>(
        () => _i37.DoctorAppointmentBloc(gh<_i23.AppointmentsService>()));
    gh.factory<_i38.PatientAppointmentBloc>(
        () => _i38.PatientAppointmentBloc(gh<_i23.AppointmentsService>()));
    gh.factory<_i39.ForgetPasswordCubit>(
        () => _i39.ForgetPasswordCubit(gh<_i26.ResetPasswordRepository>()));
    gh.factory<_i40.ResetPasswordCubit>(
        () => _i40.ResetPasswordCubit(gh<_i26.ResetPasswordRepository>()));
    return this;
  }
}

class _$PreferencesModule extends _i41.PreferencesModule {}

class _$SecureStorageModule extends _i42.SecureStorageModule {}

class _$ApiModule extends _i27.ApiModule {}

class _$DiAppModule extends _i43.DiAppModule {}
