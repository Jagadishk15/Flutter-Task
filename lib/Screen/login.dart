import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_task/Screen/otp.dart';

import '../Service/authservice.dart';

class Login extends ConsumerStatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  // bool status = false;
  // uivalidation(String value) {
  //   if (value.isEmpty) {
  //     status = false;
  //   } else {
  //     status = true;
  //   }
  //   setState(() {});
  // }
   onPressedLogin() async {

       var loginresponse = await Auth().getotp(number: _textcontroller1.text);

 if(loginresponse['Status']==1){
        showToast(loginresponse['Message'],
     textStyle: TextStyle(color: Colors.black),
     backgroundColor: Colors.grey[300],
                    context: context,
                    
                    borderRadius: BorderRadius.circular(10),
                    animation: StyledToastAnimation.size,
                    reverseAnimation: StyledToastAnimation.size,
                    axis: Axis.horizontal,
                    position: StyledToastPosition.center,
                    animDuration: Duration(milliseconds: 400),
                    duration: Duration(seconds: 2),
                    curve: Curves.linear,
                    reverseCurve: Curves.linear);
  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) {
                    return OTPScreen(number: _textcontroller1.text ,);
                  })));
       
     }   else {
        // Fluttertoast.showToast(msg: loginresponse.message);
         showToast(loginresponse['Message'],
     textStyle: TextStyle(color: Colors.black),
     backgroundColor: Colors.grey[300],
                    context: context,
                    
                    borderRadius: BorderRadius.circular(10),
                    animation: StyledToastAnimation.size,
                    reverseAnimation: StyledToastAnimation.size,
                    axis: Axis.horizontal,
                    position: StyledToastPosition.center,
                    animDuration: Duration(milliseconds: 400),
                    duration: Duration(seconds: 2),
                    curve: Curves.linear,
                    reverseCurve: Curves.linear);
         return ;
     }
 

  }
  validation(){
    if( _textcontroller1.text.isEmpty){
      showToast('Enter the Phone Number',
     textStyle: TextStyle(color: Colors.black),
     backgroundColor: Colors.grey[300],
                    context: context,
                    
                    borderRadius: BorderRadius.circular(10),
                    animation: StyledToastAnimation.size,
                    reverseAnimation: StyledToastAnimation.size,
                    axis: Axis.horizontal,
                    position: StyledToastPosition.center,
                    animDuration: Duration(milliseconds: 400),
                    duration: Duration(seconds: 2),
                    curve: Curves.linear,
                    reverseCurve: Curves.linear);
    } else if(_textcontroller1.text.contains(RegExp(r'[0-9]',unicode: true,dotAll: true ,multiLine: true,caseSensitive: false),)==false){
 
 
 showToast('Enter the Phone Number',
     textStyle: TextStyle(color: Colors.black),
     backgroundColor: Colors.grey[300],
                    context: context,
                    
                    borderRadius: BorderRadius.circular(10),
                    animation: StyledToastAnimation.size,
                    reverseAnimation: StyledToastAnimation.size,
                    axis: Axis.horizontal,
                    position: StyledToastPosition.center,
                    animDuration: Duration(milliseconds: 400),
                    duration: Duration(seconds: 2),
                    curve: Curves.linear,
                    reverseCurve: Curves.linear);
    }
//     else if(_textcontroller1.text.length<=9){
//       showToast('Enter the Phone Number',
//      textStyle: TextStyle(color: Colors.black),
//      backgroundColor: Colors.grey[300],
//                     context: context,
                    
//                     borderRadius: BorderRadius.circular(10),
//                     animation: StyledToastAnimation.size,
//                     reverseAnimation: StyledToastAnimation.size,
//                     axis: Axis.horizontal,
//                     position: StyledToastPosition.center,
//                     animDuration: Duration(milliseconds: 400),
//                     duration: Duration(seconds: 2),
//                     curve: Curves.linear,
//                     reverseCurve: Curves.linear);
// print('12');
//     }
    else{
//  Navigator.of(context)
//                       .push(MaterialPageRoute(builder: ((context) {
//                     return OTPScreen(number: _textcontroller1.text ,);
//                   })));
onPressedLogin();
    }
  }

  TextEditingController _textcontroller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image.asset(
                      'Assets/banner.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Log in',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 21),
                          ),
                          Text(
                            'Please Log in to Continue',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(bottom: 40, child: loginbox()),
            ],
          ),
        ));
  }

  Widget loginbox() {
    final w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          //  margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(2, 2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
          ),
          //height: 200,
          width: w - 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Log in',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 21),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                      controller: _textcontroller1,
                      // onChanged: (value) {
                      //   uivalidation(value);
                      // },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        //border: InputBorder.none,
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(
                            color: Colors.black45,
                            fontFamily: 'Gilroy',
                            fontSize: 15,
                            fontWeight: FontWeight.w700),

                        prefixIcon: Icon(Icons.mobile_friendly),
                        contentPadding: EdgeInsets.only(left: 1, top: 18),
                        //  suffixIcon:  Image.asset("Assets/Images/searchright.png",
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                 validation();
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  //width:100.w,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(5),
                      color: Colors.deepOrange),
                  child: Center(
                      child: Text(
                    'Get OTP',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Gilroy",
                        fontSize: 15),
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
