
import 'package:e_commerce/features/sign_up_screen/sign_up_screen.dart';
import 'package:e_commerce/features/splash_screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../features/home_screen/home_screen.dart';
import '../features/login_screen/login_screen.dart';
class RoutesManager{
  static const Klogin = "/loginScreen";
  static const kSignUp = "/SignUpScreen";
  static const khome = "/homeScreen";

 static final router = GoRouter(routes: [
    GoRoute(path: "/" ,
        builder: (context , state ) =>  const SplashScreen()),

GoRoute(path: Klogin ,
         builder: (context , state ) =>  const LoginScreen()),
GoRoute(path: kSignUp ,
         builder: (context , state ) =>  const SignUp()),
GoRoute(path: khome ,
         builder: (context , state ) =>  const HomeScreen()),


  ]);
}
