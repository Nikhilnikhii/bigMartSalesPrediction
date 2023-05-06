import 'package:bigmartsalesprediction/components/background.dart';
import 'package:bigmartsalesprediction/signup/components/signup_top_image.dart';
import 'package:flutter/material.dart';

//internal modules
import '../signup//components//signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          const SignupTopImage(),

          Row(
            children: const [
              Spacer(),
              Expanded(flex: 8, child: SignUpForm()),
              Spacer()
            ],
          )
        ],
      ),
    ));
  }
}
