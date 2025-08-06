import 'package:e_commerce/app_theme/app_theme.dart';
import 'package:e_commerce/utils/router_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../features/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(720,900),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,context){
        return  MaterialApp.router(
          theme: AppTheme.theme,
          routerConfig: RoutesManager.router,
          debugShowCheckedModeBanner: false,

        );

      },
    );



  }
}
