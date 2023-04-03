import 'package:go_router/go_router.dart';
import 'package:up_orgs/features/user_profile/screens/user_profile.dart';

import '../core/features/auth/presentation/screens/forgot_password_screen.dart';
import '../core/features/auth/presentation/screens/login_screen.dart';
import '../core/features/auth/presentation/screens/sign_up_screen.dart';
import '../core/screens/empty_state_screens/under_development_screen.dart';
import '../core/screens/error_screens/page_not_found_screen.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../features/onboarding/presentation/screens/persistent_onboarding_screen.dart';
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
        path: OnboardingScreen.routeName,
        builder: (_, __) => const OnboardingScreen(),
      ),
      GoRoute(
        path: UserProfile.routeName,
        builder: (_, __) => const UserProfile(),
      ),
      GoRoute(
        path: PersistentOnboardingScreen.routeName,
        builder: (_, __) => const PersistentOnboardingScreen(),
      ),
      GoRoute(
        path: LoginScreen.routeName,
        builder: (_, __) => const LoginScreen(),
      ),
      GoRoute(
        path: SignUpScreen.routeName,
        builder: (_, __) => const SignUpScreen(),
      ),
      GoRoute(
        path: ForgotPassword.routeName,
        builder: (_, __) => const ForgotPassword(),
      ),
      GoRoute(
        path: HomeScreen.routeName,
        builder: (_, __) => const HomeScreen(),
      ),
      GoRoute(
        path: UnderDevelopmentScreen.routeName,
        builder: (_, __) => const UnderDevelopmentScreen(),
      ),
      GoRoute(
        path: PageNotFoundScreen.routeName,
        builder: (_, __) => const PageNotFoundScreen(),
      ),
    ],
  );
}
