import 'package:e_commerce/utils/router_manager.dart';
import 'package:flutter/material.dart';

import '../features/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RoutesManager.router,

      debugShowCheckedModeBanner: false,

    );
  }
}
