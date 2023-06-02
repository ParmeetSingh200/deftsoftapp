import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_ui/filtersort.dart';
import 'package:flutter_application_ui/restaurantdetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        elevation: 0,
        leading: Container(
          width: 180,
          height: 180,
          child: InkWell(
              // onTap: () {
              //   Navigator.pop(
              //     context,
              //   );
              // },
              child: Image.asset('assets/images/Vectorsearchhome.png')),
        ),
        // backgroundColor: Color(0xFFF1F1F1),
        backgroundColor: Colors.transparent,
        title: const Text(
          "Home",
          style: TextStyle(
              color: Color(0xFF33373E),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: setUpUI(),
    );
  }

  Widget setUpUI() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          setUpDropDown(),
          const SizedBox(height: 20),
          setUpListview(),
          // setUpTextfield(),
          // setUpButtonPlusLink(),
          //  const SizedBox(height: 5),
          // setUpLink(),
        ]);
  }

  Widget setUpDropDown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FilterSortPage(),
              ),
            );
          },
          child: Container(
            height: 26,
            width: 121,
            decoration: BoxDecoration(
              color: Colors.white,
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
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Food-typevgfv",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                  Image.asset(
                    'assets/images/Polygon1.png',
                    height: 22.5,
                    width: 22.5,
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FilterSortPage(),
              ),
            );
          },
          child: Container(
            height: 26,
            width: 89,
            decoration: BoxDecoration(
              color: Colors.white,
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
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "State:Alasa",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                  Image.asset(
                    'assets/images/Polygon1.png',
                    height: 22.5,
                    width: 22.5,
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FilterSortPage(),
              ),
            );
          },
          child: Container(
            height: 26,
            width: 68,
            decoration: BoxDecoration(
              color: Colors.white,
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
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sort",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                  Image.asset(
                    'assets/images/Polygon1.png',
                    height: 22.5,
                    width: 22.5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget setUpListview() {
    return Flexible(
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, position) {
          return Column(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(30)),
                child: Stack(alignment: Alignment.bottomRight, children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const RestaurantDetailsPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 113,
                      width: 344,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // boxShadow: const [
                        //   BoxShadow(
                        //       color: Color(0xFF23A365),
                        //       blurRadius: 2,
                        //       spreadRadius: 0,
                        //       offset: Offset(0, 0)),
                        // ],
                        // border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipPath(
                            clipper: SkewCut(),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft:
                                      Radius.circular(30)), // Image border
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Image.asset('assets/images/HomeImage.png'),
                                    Image.asset(
                                        'assets/images/Rectangle66.png'),
                                    Positioned(
                                      bottom: 5,
                                      left: 20,
                                      child: Image.asset(
                                          'assets/images/GroupRating.png'),
                                    )
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Restaurant Name",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                  "Afghan,Mughali and 4+",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Text(
                                  "Brooklyn,New York,11300",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Text(
                                  "2.5 miles away",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                        "assets/images/VectorPickup.png"),
                                    const SizedBox(width: 6),
                                    const Text(
                                      "Pickup",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(width: 10),
                                    Image.asset(
                                        "assets/images/VectorDinein.png"),
                                    const SizedBox(width: 6),
                                    const Text(
                                      "Dine-in",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Image.asset('assets/images/SpoonImage.png'),
                ]),
              ),
              const SizedBox(
                height: 25,
              )
            ],
          );
        },
      ),
    );
  }
}

class SkewCut extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width - 25, 0);

    path.lineTo(size.width, size.height);
    path.lineTo(-20, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(SkewCut oldClipper) => false;
}
