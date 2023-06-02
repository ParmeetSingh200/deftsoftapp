import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_ui/login.dart';
import 'package:flutter_application_ui/widgets/commonbuttonfield.dart';
import 'package:flutter_application_ui/widgets/commonsalertdialog.dart';
import 'package:flutter_application_ui/widgets/commontextfield.dart';

// import 'widgets/commonbuttonfield.dart';
// import 'widgets/commonsalertdialog.dart';
// import 'widgets/commontextfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  int count = 0;

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

          // resizeToAvoidBottomInset: false,
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
              "Forgot Password",
              style: TextStyle(
                  color: Color(0xFF33373E),
                  fontSize: 23,
                  fontWeight: FontWeight.w600),
            ),
          ),
          body: setUpUI(),
        ),
      ),
    );
  }

  Widget setUpUI() {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 25),
        setUpLogo(),
        const SizedBox(height: 60),
        setUpText(),
        const SizedBox(height: 50),
        setUpTextfield(),
        const SizedBox(height: 95),
        setUpButton(),
        const SizedBox(height: 30),

        // setUpBottomtext(),
      ]),
    );
  }

  Widget setUpLogo() {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.contain,
      ),
    );
  }

  Widget setUpText() {
    return const Padding(
      padding: EdgeInsets.only(left: 32, right: 32),
      child: Text(
        "An email will be sent to you with the link to reset your password.",
        style: TextStyle(
            color: Color(0xFF33373E),
            fontSize: 17,
            fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget setUpTextfield() {
    return CommonTextField(
      // height: MediaQuery.of(context).size.height * 0.06,
      height: 55,
      width: 343,
      hint: "Email Address",
      obscureText: false,
      readOnly: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      prefixIcon: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
        child: Image.asset(
          'assets/images/Vectormessage.png',
          height: 20,
          width: 20,
        ),
      ),
      prefixIconConstraints: const BoxConstraints(
        minHeight: 15.43,
        minWidth: 18.86,
      ),
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
                "An email has been sent to your registered email address to reset your password",
                <Widget>[
                  Center(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.popUntil(
                            //     context, (route) => count++ == 2);
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();

                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         const LoginPage(text: 'passed'),
                            //   ),
                            // );
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
              text: "Send",
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
}
