import 'package:assignment_beat/screen/auth/login_screen.dart';
import 'package:assignment_beat/screen/home_screen.dart';
import 'package:assignment_beat/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData(
          
          //colorScheme: ColorScheme.fromSeed(seedColor:  ColorApp.appcolor2),
          useMaterial3: false,
        ),
    
       initialRoute: '/Splash',
        routes: {
          '/Splash': (context) => const SplashScreen(),
          '/Home': (context) => const Home(),
          '/Login':(context) => const Login(),
          
        },
          
        
      );
      },
      
    );
  }
}

