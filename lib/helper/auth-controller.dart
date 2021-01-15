import 'dart:convert';

import 'package:filterin/helper/app-key.dart';
import 'package:filterin/helper/server.dart';
import 'package:filterin/helper/shared-prefs.dart';
import 'package:http/http.dart' as http;

class AuthC{

  static String url = Server.endpoint;

  static Future login(email, password) async {
    var response = await http.post(url + 'auth/login',
      headers: {
        AppKey.key : AppKey.debug,
      },
      body: {
        'email' : email,
        'password' : password,
      }
    );
    var data = json.decode(response.body);
    if(response.statusCode==200){
      SFP.save('token', data['data']['token']);
      return data;
    }else{
      return data;
    }
  }

  static Future check() async {
    var token = await SFP.getToken();
    var res = token==null||token==''?"x" : " "+ token;
    var response = await http.post(url + 'auth/check-auth', 
      headers: {
        AppKey.key : AppKey.debug,
        AppKey.auth : AppKey.authKey + res,
      }
    );
    var data = json.decode(response.body);
    if(response.statusCode==200){
      return data; 
    }else{
      return data;
    }
  }

  static Future register(email ,phone , password) async {
    var response = await http.post(url + 'auth/create',
      headers: {
        AppKey.key : AppKey.debug,
      },
      body: {
        'email' : email,
        'phone' : phone,
        'password' : password,
      }
    );
    var data = json.decode(response.body);
    if(response.statusCode==200){
      SFP.save('token', data['data']['token']);
      return data;
    }else{
      return data;
    }
  }

}