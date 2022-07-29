import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_task/Screen/Welcome.dart';

import '../Service/authservice.dart';

class OTPScreen extends ConsumerStatefulWidget {
  final String number;
  const OTPScreen({Key? key,required this.number}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OTPScreenState();
}

class _OTPScreenState extends ConsumerState<OTPScreen> {
  @override
  void initState() {
    //getTimer();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    super.initState();
  }

  bool isOtp = false;
  bool isFocusChanged = false;
  TextEditingController textField1 = TextEditingController();
  TextEditingController textField2 = TextEditingController();
  TextEditingController textField3 = TextEditingController();
  TextEditingController textField4 = TextEditingController();
   resend() async {

       var loginresponse = await Auth().getotp(number:widget.number);

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
 ;
       
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
  validation() {
    if (textField1.text.isEmpty) {
      print('hii13');
      showToast('Enter the Code',
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
    } else if (textField2.text.isEmpty) {
      showToast('Enter the Code',
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
    } else if (textField3.text.isEmpty) {
      showToast('Enter the Code',
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
    } else if (textField4.text.isEmpty) {
      showToast('Enter the Code',
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
    } else if (textField1.text.contains(
          RegExp(r'^-?[1 -9]+$',
              unicode: true,
              dotAll: true,
              multiLine: true,
              caseSensitive: false),
        ) ==
        false) {
      showToast('Enter the Code',
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
    } else if (textField2.text.contains(
          RegExp(r'^-?[1 -9]+$',
              unicode: true,
              dotAll: true,
              multiLine: true,
              caseSensitive: false),
        ) ==
        false) {
      showToast('Enter the Code',
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
    } else if (textField3.text.contains(
          RegExp(r'^-?[1 -9]+$',
              unicode: true,
              dotAll: true,
              multiLine: true,
              caseSensitive: false),
        ) ==
        false) {
      showToast('Enter the Code',
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
    } else if (textField4.text.contains(
          RegExp(r'^-?[1 -9]+$',
              unicode: true,
              dotAll: true,
              multiLine: true,
              caseSensitive: false),
        ) ==
        false) {
      showToast('Enter the Code',
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
    } else {
       onPressedLogin();
      // Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
      //   return Screen1();
      // })));
    }
  }
    onPressedLogin() async {

       var loginresponse = await Auth().verifyotp(number: widget.number,
       otp: "${textField1.text}${textField2.text}${textField3.text}${textField4.text}");

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
  Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
        return Screen1();
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
  // getTimer() {
  //   Timer.periodic(Duration(seconds: 2), getValues());
  // }

  @override
  void dispose() {
    //getTimer().dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
    super.dispose();
  }

  TextEditingController _textcontroller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        // ),
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
                              'OTP Verification',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 21),
                            ),
                            Container(
                              width: 200,
                              child: Text(
                                'Please Enter OTP Code We sent To Your Mobile ${widget.number}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                ],
              ),
              Positioned(bottom: 40, child: oTPScreenbox()),
            ],
          ),
        ));
  }

  Widget oTPScreenbox() {
    final w = MediaQuery.of(context).size.width;
    return Container(
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
            height: 30,
          ),

          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                'OTP',
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
          otpFormState(),
          // MaterialButton(onPressed: (){

          // },
          // child: Text('next'),
          // ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              validation();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              //width:100.w,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(5),
                  color: Colors.deepOrange),
              child: Center(
                  child: Text(
                'Confirm OTP',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gilroy",
                    fontSize: 15),
              )),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                   margin: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                child: GestureDetector(
                  onTap: (){
                    resend();
                  },
                  child: Text('Resend',style: TextStyle(
                     color: Colors.deepOrange
                  ),),
                ))
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
      // TextField(
      //   controller: _textcontroller1,
      //   // onChanged: (value) {
      //   //   uivalidation(value);
      //   // },
      // ),
    );
  }

  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;

  void nextField(
      {@required String? value,
      FocusNode? focusNode,
      bool? first,
      bool? last}) {
    if (value!.length == 1 && last == false) {
      FocusScope.of(context).nextFocus();
    }
    if (value.length == 0 && first == false) {
      FocusScope.of(context).previousFocus();
    }
    // if (value!.length == 1) {
    //   focusNode!.requestFocus();
    // }else{
    //   // print('object');
    //   //  focusNode!.previousFocus();
    // }
  }

  Widget otpFormState() {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 15,
            ),
           decoration: BoxDecoration(
        boxShadow: [
           BoxShadow(color: Colors.deepOrange, spreadRadius: 1),
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
            width: 50.0,
            height: 50.0,
            child: TextFormField(
              // cursorColor: Colors.,
              // cursorHeight: 0.0,

              showCursor: false,
              // cursorRadius: Radius.zero,
              autofocus: true,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              keyboardType: TextInputType.number,
              //obscureText: true,
              maxLength: 1,
              decoration: InputDecoration(
                counterText: "",
                hintText: '_',
                border: InputBorder.none, //contentPadding: EdgeInsets.zero,
              ),
              textAlign: TextAlign.center,
              onChanged: (value) {
                setState(() {});
                textField1.text = value;
                // otpFieldvalidationforLogInButton();
                nextField(
                    value: value,
                    focusNode: pin2FocusNode!,
                    first: true,
                    last: false);
                print(value);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
            ),
            decoration: BoxDecoration(
        boxShadow: [
           BoxShadow(color: Colors.deepOrange, spreadRadius: 1),
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
            width: 50,
            height: 50,
            child: TextFormField(
              focusNode: pin2FocusNode,
              showCursor: false,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              keyboardType: TextInputType.number,
              maxLength: 1,
              // obscureText: true,
              decoration: InputDecoration(
                counterText: "",
                hintText: '_',
                border: InputBorder.none,
              ),
              textAlign: TextAlign.center,
              onChanged: (value) {
                setState(() {});
                textField2.text = value;
                //  otpFieldvalidationforLogInButton();
                nextField(
                    value: value,
                    focusNode: pin3FocusNode!,
                    first: false,
                    last: false);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
            ),
             decoration: BoxDecoration(
        boxShadow: [
           BoxShadow(color: Colors.deepOrange, spreadRadius: 1),
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
            width: 50,
            height: 50,
            child: TextFormField(
              focusNode: pin3FocusNode,
              showCursor: false,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              keyboardType: TextInputType.number,
              // obscureText: true,
              decoration: InputDecoration(
                counterText: "",
                hintText: '_',
                border: InputBorder.none,
              ),
              textAlign: TextAlign.center,
              maxLength: 1,
              onChanged: (value) {
                setState(() {});
                textField3.text = value;
                //  otpFieldvalidationforLogInButton();
                nextField(
                    value: value,
                    focusNode: pin4FocusNode!,
                    first: false,
                    last: false);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 15),
             decoration: BoxDecoration(
        boxShadow: [
           BoxShadow(color: Colors.deepOrange, spreadRadius: 1),
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
            width: 50,
            height: 50,
            child: TextFormField(
              focusNode: pin4FocusNode,
              showCursor: false,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
              keyboardType: TextInputType.number,
              maxLength: 1,
              // obscureText: true,
              decoration: InputDecoration(
                counterText: "",
                hintText: '_',
                border: InputBorder.none,
              ),
              textAlign: TextAlign.center,
              onChanged: (value) {
                setState(() {});

                textField4.text = value;
                nextField(
                    value: value,
                    focusNode: pin2FocusNode,
                    first: false,
                    last: true);

                //  otpFieldvalidationforLogInButton();

                // pin4FocusNode.unfocus();
              },
            ),
          ),
          SizedBox(width: 10.0),
        ],
      ),
    );
  }

//   bool otpFieldvalidationforLogInButton() {
//     setState(() {});
//     if (textField1.text.isNotEmpty &&
//         textField2.text.isNotEmpty &&
//         textField3.text.isNotEmpty &&
//         textField4.text.isNotEmpty) {
//       return true;
//     } else {
//       // FocusScope.of(context).previousFocus();
//       return false;
//     }

// }

}
