import 'package:flutter/material.dart';

class RatingandReviewsPage extends StatefulWidget {
  const RatingandReviewsPage({super.key});

  @override
  State<RatingandReviewsPage> createState() => _RatingandReviewsPageState();
}

class _RatingandReviewsPageState extends State<RatingandReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xFFF1F1F1),
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
            "Rating and Reviews",
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
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(height: 15),
      setUpImage(),
      const SizedBox(height: 10),
      setUpText(),
      const SizedBox(height: 20),
      setUpListview(),
    ]);
  }

  Widget setUpImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/RatingReviewsStar1.png"),
        const SizedBox(
          width: 5,
        ),
        Image.asset("assets/images/RatingReviewsStar2.png"),
        const SizedBox(
          width: 5,
        ),
        Image.asset("assets/images/RatingReviewsStar3.png"),
      ],
    );
  }

  Widget setUpText() {
    return const Text(
      "4.6 rating",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
    );
  }

  Widget setUpListview() {
    return Flexible(
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, position) {
          return Column(
            children: [
              Container(
                height: 104,
                width: 346,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Micheal Smith",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 155,
                          ),
                          Image.asset(
                              "assets/images/RatingReviewsSmallStar.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "4.2",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          );
        },
      ),
    );
  }
}
