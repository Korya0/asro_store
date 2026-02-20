// app router using gor router packge

import 'package:asroo_store/core/routes/app_routes.dart';
import 'package:asroo_store/test_one_screen.dart';
import 'package:asroo_store/test_two_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: AppRoutes.testOneScreen,
    routes: [
      GoRoute(
        path: AppRoutes.testOneScreen,
        builder: (context, state) => const TestOneScreen(),
      ),
      GoRoute(
        path: AppRoutes.testTwoScreen,
        builder: (context, state) => const TestTwoScreen(),
      ),
    ],
  );
}
