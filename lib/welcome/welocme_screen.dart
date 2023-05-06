import 'package:bigmartsalesprediction/welcome/components/login_signup_btn.dart';
import 'package:bigmartsalesprediction/welcome/components/welcome_image.dart';
import 'package:flutter/material.dart';

import '../components/background.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Background(
      child: SingleChildScrollView(child: SafeArea(child: Column(mainAxisAlignment: 
      MainAxisAlignment.center,
      children: 
        <Widget>[
          const WelcomeImage(),
          Row(
            children: const [
              Spacer(),
              // Expanded(child: Text("Login and Sign up ....")),
              Expanded(flex: 8,child:LoginAndSignup()),
              Spacer(),
            ],
          )
        ],
      ),)),
    );
  }
}