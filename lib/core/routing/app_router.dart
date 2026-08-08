import 'package:go_router/go_router.dart';
import 'package:project_flutter_avanced/core/routing/routes.dart';
import 'package:project_flutter_avanced/features/auth/presentation/screens/login_screen.dart';
import 'package:project_flutter_avanced/features/auth/presentation/screens/on_boarding_screen.dart';

class AppRouter {
  AppRouter._();

  static GoRouter craete() {
    return GoRouter(
      initialLocation: Routes.onBoarding,
      routes: [
        GoRoute(
          path: Routes.onBoarding,
          name: Routes.onBoardingName,
          builder: (context, state) => OnBoardingScreen(),
        ),
        GoRoute(
          path: Routes.login,
          name: Routes.loginName,
          builder: (context, state) => LoginScreen(),
        ),
      ],
    );
  }
}
