import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_ui/widgets/commonbuttonfield.dart';
// import 'package:flutter_application_ui/widgets/commonsalertdialog.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import 'login.dart';
import 'widgets/commonbuttonfield.dart';
import 'widgets/commonsalertdialog.dart';

// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerifyPhoneNumber extends StatefulWidget {
  const VerifyPhoneNumber({super.key});

  @override
  State<VerifyPhoneNumber> createState() => _VerifyPhoneNumberState();
}

class _VerifyPhoneNumberState extends State<VerifyPhoneNumber> {
  bool autoFocus = false;

  bool _onEditing = true;
  String? _code;

  int _otpCodeLength = 4;
  bool _isLoadingButton = false;
  bool _enableButton = false;
  String _otpCode = "";
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final intRegex = RegExp(r'\d+', multiLine: true);
  TextEditingController textEditingController =
      new TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    _getSignatureCode();
    _startListeningSms();
  }

  @override
  void dispose() {
    super.dispose();
    SmsVerification.stopListening();
  }

  _getSignatureCode() async {
    String? signature = await SmsVerification.getAppSignature();
    print("signature $signature");
  }

  /// listen sms
  _startListeningSms() {
    SmsVerification.startListeningSms().then((message) {
      setState(() {
        _otpCode = SmsVerification.getCode(message, intRegex);
        textEditingController.text = _otpCode;
        onOtpCallBack(_otpCode, true);
      });
    });
  }

  onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() {
      this._otpCode = otpCode;
      if (otpCode.length == _otpCodeLength && isAutofill) {
        // _enableButton = false;
        _isLoadingButton = true;
        // _verifyOtpCode();
      } else if (otpCode.length == _otpCodeLength && !isAutofill) {
        // _enableButton = true;
        _isLoadingButton = false;
      } else {
        // _enableButton = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            backgroundColor: const Color(0xFFF1F1F1),
            appBar: AppBar(
              elevation: 0,
              leading: Container(
                width: 40,
                child: InkWell(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      Timer(const Duration(milliseconds: 600), () {
                        Navigator.pop(
                          context,
                        );
                      });
                    },
                    child: Image.asset('assets/images/Vectorback.png')),
              ),
              // backgroundColor: Color(0xFFF1F1F1),
              backgroundColor: Colors.transparent,
              title: const Text(
                "Verify Phone Number",
                style: TextStyle(
                    color: Color(0xFF33373E),
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              ),
            ),
            body: setUpUI()

            // SingleChildScrollView(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       // SizedBox(
            //       //   height: 30,
            //       // ),
            //       // Padding(
            //       //   padding: EdgeInsets.only(left: 42, right: 42),
            //       //   child: Text(
            //       //     "Please enter OTP sent to your phone number",
            //       //     style: TextStyle(
            //       //         color: Color(0xFF33373E),
            //       //         fontSize: 17,
            //       //         fontWeight: FontWeight.w400),
            //       //     textAlign: TextAlign.center,
            //       //   ),
            //       // ),
            //       // SizedBox(
            //       //   height: 130,
            //       // ),
            //       TextFieldPin(
            //         textController: textEditingController,
            //         autoFocus: true,
            //         codeLength: _otpCodeLength,
            //         alignment: MainAxisAlignment.center,
            //         defaultBoxSize: 68.0,
            //         margin: 10,
            //         selectedBoxSize: 68.0,
            //         textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            //         defaultDecoration: BoxDecoration(
            //           color: Colors.white,

            //           // shape: BoxShape.circle,
            //           borderRadius: BorderRadius.circular(100),
            //           border: Border.all(width: 0, color: Color(0xFF23A365)),
            //           boxShadow: const [
            //             BoxShadow(
            //               color: Color(0xFF23A365),
            //               blurRadius: 1.0, // soften the shadow
            //               spreadRadius: -5.0, //extend the shadow
            //               offset: Offset(
            //                 -5.0, // Move to right 5  horizontally
            //                 0.0, // Move to bottom 5 Verticallyr
            //               ),
            //             ),
            //             BoxShadow(
            //               color: Color(0xFF23A365),
            //               blurRadius: 1.0, // soften the shadow
            //               spreadRadius: -5.0, //extend the shadow
            //               offset: Offset(
            //                 0.0, // Move to right 5  horizontally
            //                 -5.0, // Move to bottom 5 Verticallyr
            //               ),
            //             ),
            //             BoxShadow(
            //               color: Color(0xFF23A365),
            //               blurRadius: 1.0, // soften the shadow
            //               spreadRadius: -5.0, //extend the shadow
            //               offset: Offset(
            //                 0.0, // Move to right 5  horizontally
            //                 5.0, // Move to bottom 5 Verticallyr
            //               ),
            //             ),
            //             BoxShadow(
            //               color: Color(0xFF23A365),
            //               blurRadius: 1.0, // soften the shadow
            //               spreadRadius: -5.0, //extend the shadow
            //               offset: Offset(
            //                 5.0, // Move to right 5  horizontally
            //                 0.0, // Move to bottom 5 Verticallyr
            //               ),
            //             )
            //           ],
            //           // border: Border.all(width: 0, color: Color(0xFF23A365)),
            //         ),
            //         // selectedDecoration: _pinPutDecoration,
            //         selectedDecoration: BoxDecoration(
            //           border: Border.all(width: 0, color: Color(0xFF23A365)),
            //           color: Colors.white,
            //           borderRadius: BorderRadius.circular(100),
            //           boxShadow: const [
            //             BoxShadow(
            //               color: Color(0xFF23A365),
            //               blurRadius: 1.0, // soften the shadow
            //               spreadRadius: -5.0, //extend the shadow
            //               offset: Offset(
            //                 -5.0, // Move to right 5  horizontally
            //                 0.0, // Move to bottom 5 Verticallyr
            //               ),
            //             ),
            //             BoxShadow(
            //               color: Color(0xFF23A365),
            //               blurRadius: 1.0, // soften the shadow
            //               spreadRadius: -5.0, //extend the shadow
            //               offset: Offset(
            //                 0.0, // Move to right 5  horizontally
            //                 -5.0, // Move to bottom 5 Verticallyr
            //               ),
            //             ),
            //             BoxShadow(
            //               color: Color(0xFF23A365),
            //               blurRadius: 1.0, // soften the shadow
            //               spreadRadius: -5.0, //extend the shadow
            //               offset: Offset(
            //                 0.0, // Move to right 5  horizontally
            //                 5.0, // Move to bottom 5 Verticallyr
            //               ),
            //             ),
            //             BoxShadow(
            //               color: Color(0xFF23A365),
            //               blurRadius: 1.0, // soften the shadow
            //               spreadRadius: -5.0, //extend the shadow
            //               offset: Offset(
            //                 5.0, // Move to right 5  horizontally
            //                 0.0, // Move to bottom 5 Verticallyr
            //               ),
            //             )
            //           ],
            //         ),
            //         onChange: (code) {
            //           onOtpCallBack(code, false);
            //         },
            //       ),
            //       SizedBox(
            //         height: 120,
            //       ),
            //       InkWell(
            //         onTap: () {
            //           customAlert(context,
            //               "Your account has been registered successfully. Please verify your emailaddress first to login.");
            //         },
            //         child: CommonButtonField(
            //           height: 55,
            //           width: 186,
            //           text: "Register",
            //           border: Border.all(width: 1, color: Color(0xFF27AA6B)),
            //           color: Color(0xFF27AA6B),
            //           gradient: LinearGradient(
            //             colors: [
            //               Color(0xFF2BB673),
            //               Color(0xFF23A365),
            //             ],
            //             begin: Alignment.topLeft,
            //             end: Alignment.bottomRight,
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         height: 110,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             "Didn't received OTP? ",
            //             style: TextStyle(color: Color(0xFF33373E), fontSize: 18),
            //           ),
            //           InkWell(
            //               onTap: () {
            //                 // Navigator.of(context).push(
            //                 //   MaterialPageRoute(
            //                 //     builder: (context) => RegisterPage(),
            //                 //   ),
            //                 // );
            //               },
            //               child: Text(
            //                 "Resend Now",
            //                 style: TextStyle(
            //                     color: Color(0xFF27AA6B),
            //                     fontSize: 18,
            //                     decoration: TextDecoration.underline),
            //               )),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            ),
      ),
    );
  }

  Widget _setUpButtonChild() {
    if (_isLoadingButton) {
      return Container(
        width: 19,
        height: 19,
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    } else {
      return const Text(
        "Verify",
        style: TextStyle(color: Colors.white),
      );
    }
  }

  Widget setUpUI() {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 30),
        setUpText(),
        const SizedBox(height: 130),
        setUpOTPPackage(),
        const SizedBox(height: 90),
        setUpButton(),
        const SizedBox(height: 110),
        setUpBottomtext(),
      ]),
    );
  }

  Widget setUpText() {
    return const Padding(
      padding: EdgeInsets.only(left: 42, right: 42),
      child: Text(
        "Please enter OTP sent to your phone number",
        style: TextStyle(
            color: Color(0xFF33373E),
            fontSize: 17,
            fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget setUpOTPPackage() {
    return TextFieldPin(
      textController: textEditingController,
      autoFocus: true,
      codeLength: _otpCodeLength,
      alignment: MainAxisAlignment.center,
      defaultBoxSize: 68.0,
      margin: 10,
      selectedBoxSize: 68.0,
      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
      defaultDecoration: BoxDecoration(
        color: Colors.white,
        // shape: BoxShape.circle,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 0, color: const Color(0xFF23A365)),
        boxShadow: const [
          BoxShadow(
              color: Color(0xFF23A365),
              blurRadius: 2,
              spreadRadius: 0,
              offset: Offset(0, 0)),
        ],

        // border: Border.all(width: 0, color: Color(0xFF23A365)),
      ),
      // selectedDecoration: _pinPutDecoration,
      selectedDecoration: BoxDecoration(
        border: Border.all(width: 0, color: const Color(0xFF23A365)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: const [
          BoxShadow(
              color: Color(0xFF23A365),
              blurRadius: 2,
              spreadRadius: 0,
              offset: Offset(0, 0)),
        ],
      ),
      onChange: (code) {
        onOtpCallBack(code, false);
      },
    );
  }

  Widget setUpButton() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              customAlert(
                context,
                "Your account has been registered successfully. Please verify your emailaddress first to login.",
                <Widget>[
                  Center(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(
                                  text: 'passed',
                                ),
                              ),
                            );
                          },
                          child: Container(
                              alignment: Alignment.center,
                              height: 42,
                              width: 108,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF27AA6B),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF2BB673),
                                      Color(0xFF23A365),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  border: Border.all(
                                      width: 1, color: const Color(0xFF27AA6B)),
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Text("Okay",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center)),
                        ),
                        const SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  )
                ],
              );
            },
            child: CommonButtonField(
              height: 55,
              width: 186,
              text: "Register",
              border: Border.all(width: 1, color: const Color(0xFF27AA6B)),
              color: const Color(0xFF27AA6B),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF2BB673),
                  Color(0xFF23A365),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget setUpBottomtext() {
    return SafeArea(
      minimum: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Didn’t received OTP? ",
            style: TextStyle(color: Color(0xFF33373E), fontSize: 18),
          ),
          InkWell(
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     // builder: (context) => RegisterPage(),
                //   ),
                // );
              },
              child: const Text(
                "Resend Now ",
                style: TextStyle(
                    color: Color(0xFF27AA6B),
                    fontSize: 18,
                    decoration: TextDecoration.underline),
              )),
        ],
      ),
    );
  }
}
