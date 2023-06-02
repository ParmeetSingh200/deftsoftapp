import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF1F1F1),
        appBar: AppBar(
          elevation: 0,
          leading: Container(
            width: 40,
            child: InkWell(
                onTap: () {
                  Navigator.pop(
                    context,
                  );
                },
                child: Image.asset('assets/images/Vectorback.png')),
          ),
          // backgroundColor: Color(0xFFF1F1F1),
          backgroundColor: Colors.transparent,
          title: const Text(
            "About Us",
            style: TextStyle(
                color: Color(0xFF33373E),
                fontSize: 23,
                fontWeight: FontWeight.w600),
          ),
        ),
        body: setUpUI(),
      ),
    );
  }

  Widget setUpUI() {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          setUpText(),
          const SizedBox(height: 20,)
        ],
      ),
    
      );
  }

  Widget setUpText() {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Center(
        child: Container(
          height: 599,
          width: 346,
          decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(width: 0, color: Color(0xFF23A365)),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xFF23A365),
                    blurRadius: 2,
                    spreadRadius: 0,
                    offset: Offset(0, 0)),
              ],
              borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "L sed do eiusmodsldslvssvlslswklskvbsewbws/wwn/ wlwk bnslkvsv swlkswnlk swlswkswnk ljjkefbgdl jgbbnswjklgbnlkgje vbsljksjkgv sbejgelgwng flw;f[qnffsw;lkfnw fklanklf",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
