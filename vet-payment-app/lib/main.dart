import 'package:app/app/app_router.gr.dart';
import 'package:app/ui/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:app/data/stores/visit_store.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  final getIt = GetIt.instance;
  final visitStore = VisitStore();
  setup();
  runApp(const VetExpressApp());
}

class VetExpressApp extends StatefulWidget {
  const VetExpressApp({Key? key}) : super(key: key);

  @override
  State<VetExpressApp> createState() => VetExpressAppState();
}

class VetExpressAppState extends State<VetExpressApp> {
  VetExpressAppState() {
    //_authSubscription = AuthenticationStore.instance.authenticationChangedController.stream.listen(onAuthenticationChange);
  }

  // StreamSubscription? _authSubscription;
  // final appRouter = AppRouter();
  //
  // Future<void> onAuthenticationChange(bool isAuthenticated) async {
  //   appRouter.replaceAll(const [ WelcomeRoute()]);
  // }

  @override
  dispose() {
    //_authSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var appRouter = locator.get<AppRouter>();
    return MaterialApp.router(
      title: "Vet Express",
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
