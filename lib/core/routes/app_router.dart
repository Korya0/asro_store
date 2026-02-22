import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/features/auth/presentation/views/login_view.dart';
import 'package:asroo_store/features/auth/presentation/views/sign_up_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoutes.loginView,
    routes: [
      GoRoute(
        path: AppRoutes.loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.registerView,
        builder: (context, state) => const SignUpView(),
      ),
    ],
  );
}
