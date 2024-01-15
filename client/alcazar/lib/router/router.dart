import 'package:go_router/go_router.dart';

import '../login/view/login.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const Login(),
    ),
  ],
);
