import 'package:flutter/material.dart';

customAlert(
  BuildContext context,
  String? text,
  // Future<dynamic> text1,
//  VoidCallback? onTap,
  List<Widget>? actions,


) {
  showDialog(
    context: context,
    builder: (context) => Container(
      height: 232,
      width: 346,
      //  decoration: BoxDecoration(
      //     color: Colors.white,
      //     // border: Border.all(width: 0, color: Color(0xFF23A365)),
      //         boxShadow: const [
      //       BoxShadow(
      //             color: Color(0xFF23A365),
      //             blurRadius: 2,
      //             spreadRadius: 0,
      //             offset: Offset(0, 0)
      //         ),
      //       ],
      //     borderRadius: BorderRadius.circular(80),
      //     ),
      child: AlertDialog(
        //  shadowColor: Color(0xFF23A365),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),

        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/Group.png',
              height: 40,
              width: 40,
            ),
            const Text(
              "Success",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              text!,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: actions,
      
        // <Widget>[
        //   Center(
        //     child: Column(
        //       children: [
        //         InkWell(
        //           onTap: customAlert.onTap,
        //           child: Container(
        //               alignment: Alignment.center,
        //               height: 42,
        //               width: 108,
        //               decoration: BoxDecoration(
        //                   color: const Color(0xFF27AA6B),
        //                   gradient: const LinearGradient(
        //                     colors: [
        //                       Color(0xFF2BB673),
        //                       Color(0xFF23A365),
        //                     ],
        //                     begin: Alignment.topCenter,
        //                     end: Alignment.bottomCenter,
        //                   ),
        //                   border: Border.all(
        //                       width: 1, color: const Color(0xFF27AA6B)),
        //                   borderRadius: BorderRadius.circular(30)),
        //               child: const Text("Okay",
        //                   style: TextStyle(
        //                       fontSize: 16,
        //                       color: Colors.white,
        //                       fontWeight: FontWeight.w500),
        //                   textAlign: TextAlign.center)),
        //         ),
        //         const SizedBox(
        //           height: 12,
        //         )
        //       ],
        //     ),
        //   )
        // ],
      ),
    ),
  );
}
