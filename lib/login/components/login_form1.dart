import 'package:bigmartsalesprediction/constants.dart';
import 'package:flutter/material.dart';
import 'package:bigmartsalesprediction/login/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm1 extends StatefulWidget{

  const LoginForm1({Key?key}):super(key: key);

  @override
  State<LoginForm1> createState() => _LoginForm1State();
}

class _LoginForm1State extends State<LoginForm1> {
    final TextEditingController _usernameController=TextEditingController();
    // final TextEditingController _passwordController=TextEditingController();

    void _loginButtonPressed(){
      final String username=_usernameController.text;
      final String password=_usernameController.text;

    context.read<LoginBloc>().add(LoginButtonPressed(username, password));
    }

  @override
  Widget build(BuildContext context){
    
    return BlocProvider<LoginBloc>(
      create:(context)=>LoginBloc(),

      child: BlocConsumer<LoginBloc,LoginState>(
        listener:(context, state){
          if(state is LoginSuccess){

          }
        },
        builder:(context, state){
          return Form(

            child: Column(
              children: [
                TextFormField(
                  controller: _usernameController,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                  cursorColor: kPrimaryColor,
                  decoration: const InputDecoration(
                    hintText: "Name",
                    prefixIcon: Padding(padding: EdgeInsets.all(defaultPadding),child: Icon(Icons.person),)
                  ),
                  
                )
             
        ,const SizedBox(height: defaultPadding,),

        Hero(tag: 'login_btn', child:ElevatedButton(onPressed:_loginButtonPressed,child: Text("Login".toUpperCase()),)),

              ],
            ),
          );
        },
      ),
       
      );
  }
}