
import 'package:e_commerce/features/splash_screen/splash_screen.dart';
import 'package:e_commerce/features/tabs/card/card.dart';
import 'package:go_router/go_router.dart';

import '../../features/Auth/login_screen/login_screen.dart';
import '../../features/Auth/sign_up_screen/sign_up_screen.dart';
import '../../features/main_layout.dart';

class RoutesManager{
  static  final  Klogin = "/loginScreen";
  static const kSignUp = "/SignUpScreen";
  static const khome = "/homeScreen";
  static const kCard = "/cardProduct";

 static final router = GoRouter(routes: [
    GoRoute(path: "/" ,
        builder: (context , state ) =>  const SplashScreen()),

GoRoute(path: Klogin ,
         builder: (context , state ) =>  const LoginScreen()),
GoRoute(path: kSignUp ,
         builder: (context , state ) =>  const SignUp()),
GoRoute(path: khome ,
         builder: (context , state ) =>  const MainLayout()),
GoRoute(path: kCard ,
         builder: (context , state ) =>  const CardProduct()),


  ]);
}
