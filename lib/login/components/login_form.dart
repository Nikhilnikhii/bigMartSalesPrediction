import 'package:bigmartsalesprediction/components/already_have_an_account.dart';
import 'package:bigmartsalesprediction/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);
  //defining the login function
@override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        TextFormField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          cursorColor: kPrimaryColor,
          onSaved: (username) {
            //TODO:later map this to api payload
          },
          decoration:const InputDecoration(
              hintText: 'Username',
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              )),
        ),

        Padding(padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: TextFormField(
          textInputAction: TextInputAction.done,
          obscureText: true,
          cursorColor: kPrimaryColor,
          decoration:const InputDecoration(
            hintText: "Password",
            prefixIcon: Padding(padding:EdgeInsets.all(defaultPadding),child: Icon(Icons.lock),)
            
          ),
        ),
        ),


        const SizedBox(height: defaultPadding,),

        Hero(tag: 'login_btn', child:ElevatedButton(onPressed: (){},child: Text("Login".toUpperCase()),)),

        const SizedBox(height: defaultPadding,),
        AlreadyHaveAnAccount(press: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SignUpScreen();
          }),
          );
        })
      ]),
    );
  }
}
