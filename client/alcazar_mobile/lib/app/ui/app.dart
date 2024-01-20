import 'package:flutter/material.dart';

import '../../router/router.dart';
import '../../ui/tokens/theme/custom_theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: CustomTheme.lightThemeData(context),
    );
  }
}
