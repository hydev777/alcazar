import 'package:go_router/go_router.dart';

import '../landing/landing.dart';
import '../login/ui/pages/choose_agency.dart';
import '../login/ui/pages/login.dart';
import '../register/ui/pages/register_step1.dart';
import '../register/ui/pages/register_step2.dart';
import '../register/ui/pages/register_step3.dart';
import '../register/ui/pages/register_step4.dart';
import '../register/ui/pages/register_step5.dart';
import '../splash/splash.dart';

final router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: '/splash',
      builder: (context, state) => const Splash(),
    ),
    GoRoute(
      path: '/landing',
      builder: (context, state) => const Landing(),
    ),
    GoRoute(
      path: '/choose-agency',
      builder: (context, state) => const ChooseAgency(),
    ),
    GoRoute(
      path: '/register-step1',
      builder: (context, state) => const RegisterStep1(),
    ),
    GoRoute(
      path: '/register-step2',
      builder: (context, state) => const RegisterStep2(),
    ),
    GoRoute(
      path: '/register-step3',
      builder: (context, state) => const RegisterStep3(),
    ),
    GoRoute(
      path: '/register-step4',
      builder: (context, state) => const RegisterStep4(),
    ),
    GoRoute(
      path: '/register-step5',
      builder: (context, state) => const RegisterStep5(),
    ),
  ],
);
