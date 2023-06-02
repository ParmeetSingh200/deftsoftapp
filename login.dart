import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_ui/bottomnavbar.dart';
import 'package:flutter_application_ui/home.dart';
// import 'package:flutter_application_ui/register.dart';
import 'package:flutter_application_ui/widgets/commonbuttonfield.dart';
// import 'package:flutter_application_ui/widgets/commontextfield.dart';

import 'forgotpassword.dart';
import 'register.dart';
import 'widgets/commontextfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.text});
  final String text;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
            onWillPop: () async => false,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: Color(0xFFF1F1F1),
          // resizeToAvoidBottomInset: false,
          appBar: AppBar(
            // automaticallyImplyLeading: false,
            elevation: 0,
            leading: widget.text == 'passed'
                ? const SizedBox(
                    width: 40,
                  )
                : SizedBox(
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
        setUPLogo(),
        const SizedBox(
          height: 20,
        ),
        setUpTextfield(),
        const SizedBox(height: 20),
        setUpText(),
        const SizedBox(height: 110),
        setUpButton(),
        const SizedBox(height: 80),
        setUpBottomtext(),
      ]),
    );
  }

  Widget setUPLogo() {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.contain,
      ),
    );
  }

  Widget setUpTextfield() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        CommonTextField(
          // height: MediaQuery.of(context).size.height * 0.06,
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
          hint: "Password",
          obscureText: true,
          readOnly: false,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
            child: Image.asset(
              'assets/images/Vectorlock.png',
              height: 19.91,
              width: 16.25,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 16,
            minWidth: 19,
          ),
        ),
      ],
    );
  }

  Widget setUpText() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        "Forgot your password? ",
        style: TextStyle(color: Color(0xFF33373E), fontSize: 18),
      ),
      InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ForgotPassword(),
              ),
            );
          },
          child: const Text(
            "Reset Here",
            style: TextStyle(
                color: Color(0xFF27AA6B),
                fontSize: 18,
                decoration: TextDecoration.underline),
          )),
    ]);
  }

  Widget setUpButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const BottomNavigationPage(),
              ),
            );
          },
          child: CommonButtonField(
            height: 55,
            width: 186,
            text: "Login",
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
    );
  }

  Widget setUpBottomtext() {
    return SafeArea(
      minimum: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Don't have an account? ",
            style: TextStyle(color: Color(0xFF33373E), fontSize: 18),
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text(
                "Create account",
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
