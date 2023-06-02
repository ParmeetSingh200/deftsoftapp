import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter_application_ui/register.dart';
import 'package:flutter_application_ui/widgets/commonbuttonfield.dart';

import 'login.dart';
import 'register.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          // appBar: AppBar(title: Text("Hello")),
          body: setUpUI()
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     SizedBox(
          //       width: 196,
          //       height: 66,
          //     ),
          //     Container(
          //       // color: Colors.grey[200],
          //       height: 66,
          //       width: 196,
          //       child: new Image.asset('assets/images/logo.png'),
          //       alignment: Alignment.center,
          //     ),
          //     SizedBox(
          //       height: 50,
          //     ),
          //     Text(
          //       "Let's Get Started",
          //       style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          //     ),
          //     SizedBox(
          //       height: 60,
          //     ),
          //     InkWell(
          //       onTap: () {
          //         Navigator.of(context).push(
          //           MaterialPageRoute(
          //             builder: (context) => RegisterPage(),
          //           ),
          //         );
          //       },
          //       child: CommonButtonField(
          //         height: 55,
          //         width: 262,
          //         text: "Create an account",
          //         color: Color(0xFF27AA6B),
          //         gradient: LinearGradient(
          //           colors: [
          //             Color(0xFF2BB673),
          //             Color(0xFF23A365),
          //           ],
          //           begin: Alignment.topCenter,
          //           end: Alignment.bottomCenter,
          //         ),
          //         border: Border.all(width: 1, color: Color(0xFF6E6F6E)),
          //       ),
          //     ),
          //     SizedBox(
          //       height: 25,
          //     ),
          //     InkWell(
          //       onTap: () {
          //         Navigator.of(context).push(
          //           MaterialPageRoute(
          //             builder: (context) => LoginPage(),
          //           ),
          //         );
          //       },
          //       child: const CommonButtonField(
          //         height: 55,
          //         width: 262,
          //         text: "Already have an account",
          //         color: Color(0xFF6E6F6E),
          //       ),
          //     ),
          //     SizedBox(
          //       height: 20,
          //     ),
          //     new Image.asset(
          //       'assets/images/Group75.png',
          //       height: 240,
          //       width: double.infinity,
          //       fit: BoxFit.fill,
          //     ),
          //   ],
          // ),
          ),
    );
  }

  Widget setUpUI() {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(height: 80),
      setUPLogo(),
      const SizedBox(
        height: 50,
      ),
      setupText(),
      const SizedBox(height: 60),
      setupButton(),
      setupBottomImage(),
    ]);
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

  Widget setupText() {
    return const Text(
      "Let's Get Started",
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
    );
  }

  Widget setupButton() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ),
              );
            },
            child: CommonButtonField(
              height: 55,
              width: 262,
              text: "Create an account",
              color: const Color(0xFF27AA6B),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF2BB673),
                  Color(0xFF23A365),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              border: Border.all(width: 1, color: const Color(0xFF6E6F6E)),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginPage(
                    text: '',
                  ),
                ),
              );
            },
            child: const CommonButtonField(
              height: 55,
              width: 262,
              text: "Already have an account",
              color: Color(0xFF6E6F6E),
            ),
          ),
        ],
      ),
    );
  }

  Widget setupBottomImage() {
    return Expanded(
      child: Image.asset(
        'assets/images/Group75.png',
        // height: 240,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
