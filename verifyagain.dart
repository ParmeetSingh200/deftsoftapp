// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

// void main() => runApp(verifyagain());

// class verifyagain extends StatefulWidget {
//   @override
//   _verifyagainState createState() => _verifyagainState();
// }

// class _verifyagainState extends State<verifyagain> {
//   int _otpCodeLength = 4;
//   bool _isLoadingButton = false;
//   bool x_enableButtozn = false;
//   String _otpCode = "";
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//   final intRegex = RegExp(r'\d+', multiLine: true);
//    TextEditingController textEditingController = new TextEditingController(text: "");

//   @override
//   void initState() {
//     super.initState();
//     _getSignatureCode();
//     _startListeningSms();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     SmsVerification.stopListening();
//   }

//   BoxDecoration get _pinPutDecoration {
//     return BoxDecoration(
//       border: Border.all(color: Theme.of(context).primaryColor),
//       borderRadius: BorderRadius.circular(15.0),
//     );
//   }

//   /// get signature code
//   _getSignatureCode() async {
//     String? signature = await SmsVerification.getAppSignature();
//     print("signature $signature");
//   }

//   /// listen sms
//   _startListeningSms()  {
//      SmsVerification.startListeningSms().then((message) {
//       setState(() {
//         _otpCode = SmsVerification.getCode(message, intRegex);
//         textEditingController.text = _otpCode;
//         _onOtpCallBack(_otpCode, true);
//       });
//     });
//   }

//   _onSubmitOtp() {
//     setState(() {
//       _isLoadingButton = !_isLoadingButton;
//       _verifyOtpCode();
//     });
//   }

//   _onClickRetry() {
//    _startListeningSms();
//   }

//   _onOtpCallBack(String otpCode, bool isAutofill) {
//     setState(() {
//       this._otpCode = otpCode;
//       if (otpCode.length == _otpCodeLength && isAutofill) {
//         _enableButton = false;
//         _isLoadingButton = true;
//         _verifyOtpCode();
//       } else if (otpCode.length == _otpCodeLength && !isAutofill) {
//         _enableButton = true;
//         _isLoadingButton = false;
//       } else {
//         _enableButton = false;
//       }
//     });
//   }

//   _verifyOtpCode() {
//     FocusScope.of(context).requestFocus(new FocusNode());
//     Timer(Duration(milliseconds: 4000), () {
//       setState(() {
//         _isLoadingButton = false;
//         _enableButton = false;
//       });

//       // _scaffoldKey.currentState?.showSnackBar(
//       //     SnackBar(content: Text("Verification OTP Code $_otpCode Success")));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Container(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Center(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   TextFieldPin(
//                       textController: textEditingController,
//                       autoFocus: true,
//                       codeLength: _otpCodeLength,
//                       alignment: MainAxisAlignment.center,
//                       defaultBoxSize: 68.0,
//                       margin: 10,
//                       selectedBoxSize: 68.0,
//                       textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),
//                       defaultDecoration: BoxDecoration(
//                       color: Colors.white,
                      
//                       // shape: BoxShape.circle,
//                       borderRadius: BorderRadius.circular(100),
//                       border: Border.all(width: 0, color: Color(0xFF23A365)),
//              boxShadow: const [
//               BoxShadow(
//                 color: Color(0xFF23A365),
//                 blurRadius:1.0, // soften the shadow
//                   spreadRadius: -5.0, //extend the shadow
//                 offset: Offset(
//                   -5.0, // Move to right 5  horizontally
//                   0.0, // Move to bottom 5 Verticallyr
//                 ),
//               ),
//                BoxShadow(
//                 color: Color(0xFF23A365),
//                 blurRadius: 1.0, // soften the shadow
//                  spreadRadius: -5.0, //extend the shadow
//                 offset: Offset(
//                   0.0, // Move to right 5  horizontally
//                   -5.0, // Move to bottom 5 Verticallyr
//                 ),
//               ),
//                  BoxShadow(
//                 color: Color(0xFF23A365),
//                 blurRadius: 1.0, // soften the shadow
//                  spreadRadius: -5.0, //extend the shadow
//                 offset: Offset(
//                   0.0, // Move to right 5  horizontally
//                   5.0, // Move to bottom 5 Verticallyr
//                 ),
//               ),
//                  BoxShadow(
//                 color: Color(0xFF23A365),
//                 blurRadius: 1.0, // soften the shadow
//                  spreadRadius: -5.0, //extend the shadow
//                 offset: Offset(
//                   5.0, // Move to right 5  horizontally
//                   0.0, // Move to bottom 5 Verticallyr
//                 ),
//               )
//             ],
//                                     // border: Border.all(width: 0, color: Color(0xFF23A365)),
//                       ),
//                       // selectedDecoration: _pinPutDecoration,
//              selectedDecoration:
             
//              BoxDecoration(border: Border.all(width: 0,color:Color(0xFF23A365) ),
//              color: Colors.white,
//              borderRadius: BorderRadius.circular(100),
//                boxShadow: const [
//               BoxShadow(
//                 color: Color(0xFF23A365),
//                 blurRadius:1.0, // soften the shadow
//                   spreadRadius: -5.0, //extend the shadow
//                 offset: Offset(
//                   -5.0, // Move to right 5  horizontally
//                   0.0, // Move to bottom 5 Verticallyr
//                 ),
//               ),
//                BoxShadow(
//                 color: Color(0xFF23A365),
//                 blurRadius: 1.0, // soften the shadow
//                  spreadRadius: -5.0, //extend the shadow
//                 offset: Offset(
//                   0.0, // Move to right 5  horizontally
//                   -5.0, // Move to bottom 5 Verticallyr
//                 ),
//               ),
//                  BoxShadow(
//                 color: Color(0xFF23A365),
//                 blurRadius: 1.0, // soften the shadow
//                  spreadRadius: -5.0, //extend the shadow
//                 offset: Offset(
//                   0.0, // Move to right 5  horizontally
//                   5.0, // Move to bottom 5 Verticallyr
//                 ),
//               ),
//                  BoxShadow(
//                 color: Color(0xFF23A365),
//                 blurRadius: 1.0, // soften the shadow
//                  spreadRadius: -5.0, //extend the shadow
//                 offset: Offset(
//                   5.0, // Move to right 5  horizontally
//                   0.0, // Move to bottom 5 Verticallyr
//                 ),
//               )
//             ],
//              ),
//                       onChange: (code) {
//                         _onOtpCallBack(code,false);
//                       }),
//                   SizedBox(
//                     height: 32,
//                   ),
//                   Container(
//                     width: double.maxFinite,
//                     child: MaterialButton(
//                       onPressed: _enableButton ? _onSubmitOtp : null,
//                       child: _setUpButtonChild(),
//                       color: Colors.blue,
//                       disabledColor: Colors.blue[100],
//                     ),
//                   ),
//                   Container(
//                     width: double.maxFinite,
//                     child: TextButton(
//                       onPressed: _onClickRetry,
//                       child: Text(
//                         "Retry",
//                         style: TextStyle(color: Colors.orange),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _setUpButtonChild() {
//     if (_isLoadingButton) {
//       return Container(
//         width: 19,
//         height: 19,
//         child: CircularProgressIndicator(
//           valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//         ),
//       );
//     } else {
//       return Text(
//         "Verify",
//         style: TextStyle(color: Colors.white),
//       );
//     }
//   }
// }