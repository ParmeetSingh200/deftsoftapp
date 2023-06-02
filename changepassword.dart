import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_ui/login.dart';
import 'package:flutter_application_ui/widgets/commonbuttonfield.dart';
import 'package:flutter_application_ui/widgets/commonsalertdialog.dart';
import 'package:flutter_application_ui/widgets/commontextfield.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
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
              "Change Password",
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
        const SizedBox(height: 30),
        setUpText(),
        const SizedBox(height: 40),
        setUpTextfield(),
        const SizedBox(height: 80),
        setUpButton(),
      ]),
    );
  }

  Widget setUpText() {
    return const Padding(
      padding: EdgeInsets.only(left: 27, right: 27),
      child: Text(
        "You need to login again after you update your password.",
        style: TextStyle(
            color: Color(0xFF33373E),
            fontSize: 20,
            fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget setUpTextfield() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CommonTextField(
          height: 55,
          width: 343,
          hint: "Old Password",
          obscureText: false,
          readOnly: false,
          // keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.next,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
            child: Image.asset(
              'assets/images/Vectorlock.png',
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 19.91,
            minWidth: 16.25,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CommonTextField(
          height: 55,
          width: 343,
          hint: "New Password",
          obscureText: true,
          readOnly: false,
          // keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
            child: Image.asset(
              'assets/images/Vectorlock.png',
              height: 20,
              width: 20,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 15.43,
            minWidth: 18.86,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CommonTextField(
          height: 55,
          width: 343,
          hint: "Confirm New Password",
          obscureText: true,
          readOnly: false,
          // keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
            child: Image.asset(
              'assets/images/Vectorlock.png',
              height: 20,
              width: 20,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 15.43,
            minWidth: 18.86,
          ),
        ),
      ],
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
                "Your password has been changed successfully.",
                <Widget>[
                  Center(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const LoginPage(
                                          text: 'passed',
                                        )),
                                ModalRoute.withName(
                                    '/login') // Replace this with your root screen's route name (usually '/')
                                );

                            // Navigator.popUntil(
                            //     context, (route) => count++ == 4);

                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => const LoginPage(
                            //       text: 'passed',
                            //     ),
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
              text: "Update",
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
