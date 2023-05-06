import 'package:bigmartsalesprediction/login/components/login_screen_top_image.dart';
// import 'package:bigmartsalesprediction/signup/components/login_redirect.dart';
import 'package:flutter/material.dart';

//internal modules
import '../components/background.dart';
import '../login/components/login_form.dart';


class LoginScreen extends StatelessWidget{
  const LoginScreen({Key?key}):super(key:key);

  @override

  Widget build(BuildContext context){
    return Background(
      child: 
    SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
        const LoginScreenTopImage(),
        Row(children: const[
          Spacer(),
          Expanded(flex: 8,child: LoginForm()),
          Spacer(),
        ],),

        // const LoginRedirect(),
      ]),

    )
    );
  }
}