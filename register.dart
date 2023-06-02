import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_ui/login.dart';
import 'package:flutter_application_ui/verifyphonenumber.dart';
import 'package:flutter_application_ui/widgets/commonbuttonfield.dart';
import 'package:flutter_application_ui/widgets/commontextfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
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
              "Register",
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
      // scrollDirection: Axis.vertical,
      physics: const ClampingScrollPhysics(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(height: 45),
        setUpText(),
        const SizedBox(height: 40),
        setUpTextfield(),
        const SizedBox(height: 50),
        setUpButton(),
        const SizedBox(height: 40),
        // setUpBottomtext(),
      ]),
    );
  }

  Widget setUpText() {
    return const Padding(
      padding: EdgeInsets.only(left: 27, right: 27),
      child: Text(
        "Please fill the following details to register with Zabihah Market.",
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
          hint: "First Name",
          obscureText: false,
          readOnly: false,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.name,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
            child: Image.asset(
              'assets/images/Vectoruserimage.png',
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 19.5,
            minWidth: 18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CommonTextField(
          height: 55,
          width: 343,
          hint: "Last Name",
          obscureText: false,
          readOnly: false,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
            child: Image.asset(
              'assets/images/Vectoruserimage.png',
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 19.5,
            minWidth: 18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CommonTextField(
          height: 55,
          width: 343,
          hint: "Email Address",
          obscureText: false,
          readOnly: false,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
            child: Image.asset(
              'assets/images/Vectormessage.png',
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
        Container(
          height: 55,
          width: 343,
          decoration: BoxDecoration(
            color: const Color(0xFFF1F1F1),
            // border: Border.all(width: 0, color: Color(0xFF23A365)),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                  color: Color(0xFF23A365),
                  blurRadius: 2,
                  spreadRadius: 0,
                  offset: Offset(0, 0)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Vectordrop.png',
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Select US State",
                  style: TextStyle(fontSize: 20, color: Color(0xFFAFAFAF)),
                ),
                const SizedBox(
                  width: 110,
                ),
                Image.asset(
                  'assets/images/Polygon.png',
                  height: 22.5,
                  width: 22.5,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        CommonTextField(
          height: 55,
          width: 343,
          hint: "Phone Number",
          obscureText: false,
          readOnly: false,
          keyboardType: TextInputType.phone,
          textInputAction: TextInputAction.next,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
            child: Image.asset(
              'assets/images/Vectorphone.png',
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
          hint: "Password",
          obscureText: true,
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
          hint: "Confirm Password",
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const VerifyPhoneNumber(),
                ),
              );
            },
            child: CommonButtonField(
              height: 55,
              width: 186,
              text: "Next",
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
