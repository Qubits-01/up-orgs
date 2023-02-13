import 'package:go_router/go_router.dart';

import '../core/features/authentication/presentation/screens/login_screen.dart';
import '../core/features/authentication/presentation/screens/sign_up_screen.dart';
import '../core/screens/empty_state_screens/under_development_screen.dart';
import '../core/screens/error_screens/page_not_found_screen.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/splash_startup/presentation/screens/splash_screen.dart';

/// GoRouter configuration.
class AppRouter {
  const AppRouter._();

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: SplashScreen.routeName,
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: LoginScreen.routeName,
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: SignUpScreen.routeName,
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: HomeScreen.routeName,
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: UnderDevelopmentScreen.routeName,
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path: PageNotFoundScreen.routeName,
        builder: (_, __) => const SplashScreen(),
      ),
    ],
  );
}
