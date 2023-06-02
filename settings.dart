import 'package:flutter/material.dart';
import 'package:flutter_application_ui/aboutus.dart';
import 'package:flutter_application_ui/addreviews.dart';
import 'package:flutter_application_ui/login.dart';
import 'package:flutter_application_ui/myprofile.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: const Color(0xFFF1F1F1),
        appBar: AppBar(
          elevation: 0,
          leading: Container(
            width: 180,
            height: 180,
            child: const InkWell(
                // onTap: () {
                //   Navigator.pop(
                //     context,
                //   );
                // },
                // child: new Image.asset('assets/images/Vectorsearchhome.png')
                ),
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Settings",
            style: TextStyle(
                color: Color(0xFF33373E),
                fontSize: 20,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            setUpListTile(),
            const SizedBox(height: 60),
          ]),
    );
  }

  setUpListTile() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MyProfilePage(),
              ),
            );
          },
          child: ListTile(
            tileColor: Colors.white,
            leading: Image.asset("assets/images/SettingsMyProfile.png"),
            title: const Text(
              'My Profile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              // textScaleFactor: 1.5,
            ),
            minLeadingWidth: 0,
            trailing: Image.asset("assets/images/SettingsArrow.png"),
            visualDensity: const VisualDensity(vertical: 2),
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          height: 2,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AboutUsPage(),
              ),
            );
          },
          child: ListTile(
            tileColor: Colors.white,
            leading: Image.asset("assets/images/SettingsAboutUs.png"),
            title: const Text(
              'About Us',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            minLeadingWidth: 0,
            trailing: Image.asset("assets/images/SettingsArrow.png"),
            visualDensity: const VisualDensity(vertical: 2),
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          height: 2,
        ),
        ListTile(
          tileColor: Colors.white,
          leading: Image.asset("assets/images/SettingsContactUs.png"),
          title: const Text(
            'Contact Us',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            // textScaleFactor: 1.5,
          ),
          minLeadingWidth: 0,
          trailing: Image.asset("assets/images/SettingsArrow.png"),
          visualDensity: const VisualDensity(vertical: 2),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          height: 2,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AddReviewPage(),
              ),
            );
          },
          child: ListTile(
            tileColor: Colors.white,
            leading: Image.asset("assets/images/SettingsFeedback.png"),
            title: const Text(
              'Write a Feedback',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              // textScaleFactor: 1.5,
            ),
            minLeadingWidth: 0,
            trailing: Image.asset("assets/images/SettingsArrow.png"),
            visualDensity: const VisualDensity(vertical: 2),
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          height: 2,
        ),
        ListTile(
          tileColor: Colors.white,
          leading: Image.asset("assets/images/SettingsT&C.png"),
          title: const Text(
            'Terms & Conditions',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            // textScaleFactor: 1.5,
          ),
          minLeadingWidth: 0,
          trailing: Image.asset("assets/images/SettingsArrow.png"),
          visualDensity: const VisualDensity(vertical: 2),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          height: 2,
        ),
        ListTile(
          tileColor: Colors.white,
          leading: Image.asset("assets/images/SettingsPrivacy.png"),
          title: const Text(
            'Privacy Policy',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            // textScaleFactor: 1.5,
          ),
          minLeadingWidth: 0,
          trailing: Image.asset("assets/images/SettingsArrow.png"),
          visualDensity: const VisualDensity(vertical: 2),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          height: 2,
        ),
        ListTile(
          tileColor: Colors.white,
          leading: Image.asset("assets/images/SettingsAboutUs.png"),
          title: const Text(
            'Disclaimer',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            // textScaleFactor: 1.5,
          ),
          minLeadingWidth: 0,
          trailing: Image.asset("assets/images/SettingsArrow.png"),
          visualDensity: const VisualDensity(vertical: 2),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.5),
          height: 2,
        ),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => SizedBox(
                height: 232,
                width: 346,
                child: Stack(
                    // alignment: Alignment.centerLeft,
                    children: [
                      AlertDialog(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/LogoutImage.png',
                              // height: 40,
                              // width: 40,
                            ),
                            const Text(
                              "Logout",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Are you sure, you want to logout?",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          Center(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(
                                          context,
                                        );
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          height: 42,
                                          width: 108,
                                          decoration: BoxDecoration(
                                              // color: const Color(0xFF27AA6B),
                                              gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xFF8E8E8E),
                                                  Color(0xFF555555),
                                                ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                              ),
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xFF8E8E8E)),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: const Text("No",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.center)),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Navigator.popUntil(
                                        //     context, (route) => count++ == 2);

                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        const LoginPage(
                                                          text: 'passed',
                                                        )),
                                            ModalRoute.withName(
                                                '/login') // Replace this with your root screen's route name (usually '/')
                                            );

                                        // Navigator.of(context).pop(
                                        //   MaterialPageRoute(
                                        //     builder: (context) =>
                                        //         const LoginPage(
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
                                              // color: const Color(0xFF27AA6B),
                                              gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xFF2BB673),
                                                  Color(0xFF23A365),
                                                ],
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                              ),
                                              border: Border.all(
                                                  width: 1,
                                                  color:
                                                      const Color(0xFF27AA6B)),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: const Text("Yes",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.center)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        top: 230,
                        left: 70,
                        child: Image.asset('assets/images/LocationImage.png'),
                      ),
                      Positioned(
                        top: 232,
                        right: 110,
                        child: Image.asset('assets/images/AlertImage.png'),
                      )
                    ]),
              ),
            );
          },
          child: ListTile(
            tileColor: Colors.white,
            leading: Image.asset("assets/images/SettingsLogout.png"),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              // textScaleFactor: 1.5,
            ),
            minLeadingWidth: 0,
            trailing: Image.asset("assets/images/SettingsArrow.png"),
            visualDensity: const VisualDensity(vertical: 2),
          ),
        ),
      ],
    );
  }
}
