import 'package:get_it/get_it.dart';
import 'package:app/data/stores/visit_store.dart';
import 'package:app/app/app_router.gr.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingleton<AppRouter>(AppRouter());
  locator.registerSingleton<VisitStore>(VisitStore());
}