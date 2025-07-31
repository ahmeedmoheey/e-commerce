
import 'package:e_commerce/features/splash_screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../features/login_screen/login_screen.dart';
class RoutesManager{
  static const Klogin = "/loginScreen";

 static final router = GoRouter(routes: [
    GoRoute(path: "/" ,
        builder: (context , state ) =>  const SplashScreen()),

GoRoute(path: Klogin ,
         builder: (context , state ) =>  const LoginScreen()),


  ]);
}
