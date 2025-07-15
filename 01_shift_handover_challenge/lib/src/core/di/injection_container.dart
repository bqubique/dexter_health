import 'package:get_it/get_it.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/data/shift_handover_service.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<ShiftHandoverService>(
      () => ShiftHandoverService());
}
