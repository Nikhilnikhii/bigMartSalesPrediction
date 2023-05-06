import 'package:bigmartsalesprediction/components/already_have_an_account.dart';
import 'package:bigmartsalesprediction/constants.dart';
import 'package:bigmartsalesprediction/login/login_screen.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          cursorColor: kPrimaryColor,
          onSaved: (name) {},
          decoration: const InputDecoration(
              hintText: "Enter Your Name",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              )),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              cursorColor: kPrimaryColor,
              onSaved: (username) {},
              decoration: const InputDecoration(
                  hintText: "Enter Your Username",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.person_2),
                  )),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              // keyboardType:TextInputType,
              obscureText: true,
              cursorColor: kPrimaryColor,
              onSaved: (password) {},
              decoration: const InputDecoration(
                  hintText: "Set Your Password",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.lock),
                  )),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              cursorColor: kPrimaryColor,
              onSaved: (mobileNo) {},
              decoration: const InputDecoration(
                  hintText: "Enter Your Mobile No",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.person_2),
                  )),
            )),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              cursorColor: kPrimaryColor,
              onSaved: (email) {},
              decoration: const InputDecoration(
                  hintText: "Enter Your Email",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.person_2),
                  )),
            )),
        const SizedBox(
          height: defaultPadding,
        ),


        Hero(tag: 'signup_btn', child:ElevatedButton(onPressed: (){},child: Text("SignUp".toUpperCase()),)),

        const SizedBox(height: defaultPadding,),

        AlreadyHaveAnAccount(
          login: false,
          press: (){
          Navigator.push(context,MaterialPageRoute(builder: (context){
            return LoginScreen();
          }));
        })

        ,const SizedBox(height: defaultPadding,),

      ],
    ));
  }
}
