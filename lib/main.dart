// import 'package:bigmartsalesprediction/login/login_screen.dart';
import 'package:bigmartsalesprediction/constants.dart';
import 'package:bigmartsalesprediction/login/components/login_form.dart';
import 'package:bigmartsalesprediction/signup/signup_screen.dart';
import 'package:flutter/material.dart';

//internal modules
import 'package:bigmartsalesprediction/welcome/welocme_screen.dart';
// import 'package:bigmartsalesprediction/login/login_screen.dart';
// import 'package:bigmartsalesprediction/signup/signup_screen.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget{

  const MyApp({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        // '/':(context)=>const LoginForm(),
        '/signup':(context)=>const SignUpScreen()
      },
      debugShowCheckedModeBanner: false,
      title: "Big Mart Sales Prediction",
      //adding theme to app
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(style: 
        ElevatedButton.styleFrom(elevation: 0,primary: kPrimaryColor,
        shape: const StadiumBorder(),
        maximumSize: const Size(double.infinity,56),
        minimumSize: const Size(double.infinity,56),
        )
        ),

        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: kPrimaryLightColor,
          iconColor: kPrimaryColor,
          prefixIconColor: kPrimaryColor,
          contentPadding: EdgeInsets.symmetric(
            horizontal: defaultPadding,vertical: defaultPadding
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none,
          )
        )

      ),
      home: const WelcomeScreen(),
      // home: SignUpScreen(),
    );
  }
  
}