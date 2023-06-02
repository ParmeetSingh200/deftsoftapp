import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_ui/widgets/commonbuttonfield.dart';
import 'package:flutter_application_ui/widgets/commontextfield.dart';

class AddReviewPage extends StatefulWidget {
  const AddReviewPage({super.key});

  @override
  State<AddReviewPage> createState() => _AddReviewPageState();
}

class _AddReviewPageState extends State<AddReviewPage> {
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
              "Add Review",
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
        const SizedBox(height: 15),
        setUpLogo(),
        const SizedBox(height: 20),
        setUpText(),
        const SizedBox(height: 30),
        setUpStarImage(),
        const SizedBox(height: 20),
        setUpTextfield(),
        const SizedBox(height: 60),
        setUpButton(),
        const SizedBox(height: 60),
      ]),
    );
  }

  Widget setUpLogo() {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(
        "assets/images/AddReviewsLogo.png",
        fit: BoxFit.contain,
      ),
    );
  }

  Widget setUpText() {
    return const Text(
      ("Rate Your Experience"),
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
    );
  }

  Widget setUpStarImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/AddReviewStar.png"),
        const SizedBox(width: 8),
        Image.asset("assets/images/AddReviewStar.png"),
        const SizedBox(width: 8),
        Image.asset("assets/images/AddReviewStar.png"),
        const SizedBox(width: 8),
        Image.asset("assets/images/AddReviewStar.png"),
        const SizedBox(width: 8),
        Image.asset("assets/images/AddReviewStar.png"),
      ],
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
          height: 180,
          width: 343,
          hint: "Enter Review...",
          hintstyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          obscureText: false,
          readOnly: false,
          keyboardType: TextInputType.multiline,
          textInputAction: TextInputAction.done,
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
            child: Image.asset(
              'assets/images/AddReview.png',
              // height: 20,
              // width: 20,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 16,
            minWidth: 20,
          ),
        ),
        // const SizedBox(
        //   height: 20,
        // ),
      ],
    );
  }

  Widget setUpButton() {
    return CommonButtonField(
      height: 55,
      width: 186,
      text: "Submit",
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
    );
  }
}
