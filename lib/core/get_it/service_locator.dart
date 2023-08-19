import 'package:get_it/get_it.dart';
import 'package:valorant/Data/Web_Services/web_services.dart';
import 'package:valorant/cubit/charactar_cubit.dart';

import '../../Data/repository/get_agents.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerFactory(() => CharacterCubit(sl()));
  sl.registerLazySingleton(() => WebServices());
  sl.registerLazySingleton<ValorantRepository>(() => ValorantRepository(sl()));
}
