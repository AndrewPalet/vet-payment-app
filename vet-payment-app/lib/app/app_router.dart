import 'package:app/ui/loginView//login_page.dart';
import 'package:app/ui/welcomeView//welcome_page.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: WelcomePage),
  ],
)
class $AppRouter {}
