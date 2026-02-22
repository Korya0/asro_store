import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/features/auth/presentation/views/login_view.dart';
import 'package:asroo_store/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoutes.loginView,
    routes: [
      GoRoute(
        path: AppRoutes.loginView,
        name: AppRoutes.loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.registerView,
        name: AppRoutes.registerView,
        builder: (context, state) => const SignUpView(),
      ),

      GoRoute(
        path: AppRoutes.homeView,
        name: AppRoutes.homeView,
        builder: (context, state) => const Scaffold(),
      ),
    ],
  );
}
