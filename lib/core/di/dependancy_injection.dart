// import 'dart:async';
//
// import 'package:dio/dio.dart';
// import 'package:easy_parking_system/features/register/controller/signup_cubit.dart';
// import 'package:easy_parking_system/features/register/data/repo/sign_up_repo.dart';
// import 'package:get_it/get_it.dart';
//
// import '../api/api_service.dart';
// import '../api/dio_factory.dart';
//
// final getIt = GetIt.instance;
//
// Future<void> setupGetIt() async {
//   Dio dio = await DioFactory.initDio();
//   getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
//
//   // register your other dependencies here
//   getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
//   getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
// }
