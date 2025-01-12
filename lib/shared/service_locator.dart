import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

const revampProdUrl = '';

const revampDevUrl = '';

Future<void> setupServiceLocator() async {
  sl.registerLazySingleton<Dio>(() => Dio(BaseOptions(baseUrl: revampDevUrl)));
}
