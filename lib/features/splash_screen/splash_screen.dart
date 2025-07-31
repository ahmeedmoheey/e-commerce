import 'package:e_commerce/features/splash_screen/widgets/sliding_text/sliding_text.dart';
import 'package:e_commerce/utils/assets_manager.dart';
import 'package:e_commerce/utils/router_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
    late Animation<Offset> slidingAnimation;
    late AnimationController animationController;
    @override
    void initState(){
      super.initState();
      iniSllidingAnimation();
       navigateToLoginScreen();

      @override
      void dispose(){
        super.dispose();
        animationController.dispose();
      }

    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const  Color(0xFF004182),
      body: Stack(
        children:[
          Align(
            alignment: Alignment.topRight,
            child: Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  blurRadius: 100,
                  spreadRadius: 50,
                  offset: Offset(0,20)

                )
              ]
            ),
        ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(

              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  blurRadius: 100,
                  spreadRadius: 50,
                  offset: Offset(0,-20)

                )
              ]
            ),
        ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsManager.route,width: double.infinity,height: 100,),
               const  SizedBox(height: 20,),
                SlidingText(slidingAnimation: slidingAnimation),

              ],
            ),

          )

      ])
    );
  }
    void  iniSllidingAnimation(){
      animationController =
          AnimationController(vsync: this, duration: const Duration(seconds: 3));
      slidingAnimation =
          Tween<Offset>(begin: const Offset(0, 4), end: Offset.zero)
              .animate(animationController);
      animationController.forward();

    }
    void navigateToLoginScreen(){
      Future.delayed( const Duration(seconds: 5),(){
        GoRouter.of(context).push(RoutesManager.Klogin);
      });
    }

}

