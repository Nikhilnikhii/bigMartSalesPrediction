import 'package:bigmartsalesprediction/login/login_api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//define the events

abstract class LoginEvent {}

class LoginButtonPressed extends LoginEvent{
  final String username;
  final String password;
  LoginButtonPressed(this.username,this.password);
}

//Define the states
abstract class LoginState{}

class LoginInitial extends LoginState{}

class LoginLoading extends LoginState{}

class LoginSuccess extends LoginState{}

class LoginFailure extends LoginState{}

//define the bloc class

class LoginBloc extends Bloc<LoginEvent,LoginState>{

final LoginApiService apiService=LoginApiService();
LoginBloc():super(LoginInitial());

@override
Stream<LoginState> mapEventToState(LoginEvent event) async*{
  if(event is LoginButtonPressed){
    yield LoginLoading();

    try{
      final success=await apiService.login(event.username, event.password);
      if(success){
        yield LoginSuccess();
      }
      else{
        yield LoginFailure();
      }
    }catch(e){
      yield LoginFailure();
    }
  }
}

}
