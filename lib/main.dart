import 'package:bsketball/SplashScreen/splash_screen.dart';
import 'package:bsketball/cubit/counterCubit.dart';
import 'package:bsketball/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return BlocProvider(
            create: (context) => CounterCubit(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: {
                HomeScreen.route_Name: (_) => HomeScreen(),
                SplashScreen.routeName: (_) => SplashScreen(),
              },
              initialRoute: SplashScreen.routeName,
            ),
          );
        });
  }
}
