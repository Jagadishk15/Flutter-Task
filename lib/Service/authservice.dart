import 'dart:convert';

import 'package:dio/dio.dart';
class Auth{
 String baseurl='http://15.207.225.231:3000/api';
Future getotp({
     required  number,})async{

  var postBody = jsonEncode({
      "mobileNumber":number.toString(),
    });
//print(email);

    final response = await Dio().post("${baseurl}/users/login/sendotp",
    options: Options(
    headers: {
       "Content-Type": "application/json",
        
    },
  ),
    
        data: postBody);
   
 
     return  response.data;

}
Future verifyotp({
     required  number, otp})async{

  var postBody = jsonEncode({
      "mobileNumber":number.toString(),
      "OTP":otp.toString()
    });
//print(email);

    final response = await Dio().post("${baseurl}/users/login/verifyotp",
    options: Options(
    headers: {
       "Content-Type": "application/json",
        
    },
  ),
    
        data: postBody);
   
 
     return  response.data;

}

}