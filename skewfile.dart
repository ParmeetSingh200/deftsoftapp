import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);



class Skewfile extends StatelessWidget {
  const Skewfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: DeleteWidget(),
        ),
      ),
    );
  }
}


class DeleteWidget extends StatefulWidget {
  const DeleteWidget({super.key});

  @override
  _DeleteWidgetState createState() => _DeleteWidgetState();
}

class _DeleteWidgetState extends State<DeleteWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: SkewCut(),
          child: Container(
            color: Colors.red,
            width: 200,
            height: 50,
            child: const Center(child: Text("Hello World")),
          ),
        ),
      ),
    );
  }
}

class SkewCut extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width -20, 0);

    path.lineTo(size.width , size.height);
    path.lineTo(-20, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(SkewCut oldClipper) => false;
}