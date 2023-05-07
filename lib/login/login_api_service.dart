import 'package:http/http.dart' as http;

class LoginApiService{
  static const String baseUrl='http://64.227.148.152:5000';

  Future<bool> login(String username,String password) async{
    try{
      
      final response=await http.post(
        Uri.parse('$baseUrl/login_check'),
        body:{
          "unm":username,
          "pwd":password
        },
      );

      if(response.statusCode==200){
        //user logged in succesfully
        return true;
      }else{
        //login failed
        return false;
      }

    }catch(e){
      // print(e);
      return false;
    }
  }
}