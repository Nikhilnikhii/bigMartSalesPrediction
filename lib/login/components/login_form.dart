import 'dart:convert';

import 'package:bigmartsalesprediction/components/already_have_an_account.dart';
import 'package:bigmartsalesprediction/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../constants.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  //defining the login function

  final TextEditingController _usernameController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();

  var isLoggedIn = false;
  String errorMessage='';
  void loginButtonPressed() async {
    var client = http.Client();
  final String username=_usernameController.text;
  final String password=_passwordController.text;

    // var uri = Uri.parse('https://dev.iotzen.app/authentication/login');
    // var uri = Uri.parse('http://64.227.148.152:5000/userlogin_check');
    
    // var headers = <String, String>{
    //   'Content-Type': 'application/json; charset=UTF-8',
    // };
    // var body = jsonEncode({
    //   'unm': username,
    //   'pwd': password,
    // });
    // var response = await client
    //     .post(uri, body:body,headers: headers);
  // var headers={};
  var request = http.MultipartRequest('POST', Uri.parse('http://64.227.148.152:5000/userlogin_check'));
request.fields.addAll({
  'unm': 'nikhilnikhii',
  'pwd': 'M#sunny143'
});

// request.headers.addAll(headers);

http.StreamedResponse response = await request.send();



    if (response.statusCode == 200) {
      print(response);
      Navigator.pushNamed(context,'/signup');
      // setState(() {
      //   isLoggedIn = true;
      // });
    }else{
      setState(() {
        errorMessage='Incorrect Credintials';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // if(isLoggedIn){
    //       Navigator.push(context,MaterialPageRoute(builder: (context){
    //         return const SignUpScreen();
    //       }));
    // }
    return Form(
      child: Column(children: [
        TextFormField(
          controller: _usernameController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          cursorColor: kPrimaryColor,
          onSaved: (username) {
            //TODO:later map this to api payload
          },
          decoration: const InputDecoration(
              hintText: 'Username',
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: TextFormField(
            controller: _passwordController,
            textInputAction: TextInputAction.done,
            obscureText: true,
            cursorColor: kPrimaryColor,
            decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                )),
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Text(errorMessage,style: const TextStyle(color: Colors.red),),
        Hero(
            tag: 'login_btn',
            child: ElevatedButton(
              onPressed: loginButtonPressed,
              child: Text("Login".toUpperCase()),
            )),
        const SizedBox(
          height: defaultPadding,
        ),
        AlreadyHaveAnAccount(press: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return SignUpScreen();
            }),
          );
        })
      ]),
    );
  }
}
