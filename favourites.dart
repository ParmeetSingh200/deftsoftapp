import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_ui/restaurantdetails.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
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
          "Favourites",
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
          // const SizedBox(height: 30),
          setUpListview(),
        ]);
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
                                    ),
                                    Positioned(
                                        top: 8,
                                        left: 10,
                                        child: Image.asset(
                                            "assets/images/FavouritesHeart.png")),
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
