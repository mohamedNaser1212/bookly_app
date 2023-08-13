import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;
void setupservicelocator(){
  getIt.registerSingleton<ApiService>(ApiService(Dio(),),);
  getIt.registerSingleton<HomeRepoImp1>(
    HomeRepoImp1(
     getIt.get<ApiService>(),

  ),);

}
