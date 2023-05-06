import 'package:flutter/material.dart';
import 'package:bigmartsalesprediction/constants.dart';

class AlreadyHaveAnAccount extends StatelessWidget{
final bool login;
final Function? press;

const AlreadyHaveAnAccount({
Key?key,
this.login=true,
required this.press,
}):super(key: key);

@override
Widget build(BuildContext context){
return Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Text(
      login ? "New User ? ": "Already have an Account ? ",
      style: const TextStyle(color: kPrimaryColor),

    ),
  GestureDetector(
    onTap: press as void Function()?,
    child: Text(
      login ? "Sign Up": "Log In",
      style: const TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold
      ),
    ),
  ),


  ],
);
}
}
