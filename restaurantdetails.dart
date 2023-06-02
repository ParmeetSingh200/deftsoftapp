import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_ui/addreviews.dart';
import 'package:flutter_application_ui/ratingandreviews.dart';
import 'package:flutter_application_ui/widgets/commonbuttonfield.dart';

class RestaurantDetailsPage extends StatefulWidget {
  const RestaurantDetailsPage({super.key});

  @override
  State<RestaurantDetailsPage> createState() => _RestaurantDetailsPageState();
}

class _RestaurantDetailsPageState extends State<RestaurantDetailsPage> {
// @override
//   void initState() {
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     SystemChrome.setEnabledSystemUIMode(
//         SystemUiMode.edgeToEdge);
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Color(0xFFF1F1F1),

        extendBodyBehindAppBar: true,
        extendBody: true,
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
                child: Image.asset(
                  'assets/images/RestaurantDetailsBackImage.png',
                )),
          ),
          //   // backgroundColor: Color(0xFFF1F1F1),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Restaurant Details",
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(), child: setUpUI()),
        // Container(yh
        //   color: Colors.red,
        //   height: MediaQuery.of(context).size.height,
        //   width: MediaQuery.of(context).size.width,
        //   child: setUpUI(),
        // )
      ),
    );
  }

  Widget setUpUI() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        setUpImage(),
        const SizedBox(height: 20),
        setUpText(),
        const SizedBox(height: 40),
        setUpButton(),
        const SizedBox(height: 20),
        // setUpListview(),
      ],
    );
  }

  Widget setUpImage() {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Image.asset(
        "assets/images/RestaurantDetailsImage.png",
        // fit: BoxFit.cover,
      ),
      Image.asset("assets/images/RestaurantDetailsRectangle.png"),
      Positioned(
        bottom: 10,
        left: 15,
        child: Image.asset('assets/images/FavouritesHeart.png'),
      ),
      Positioned(
        bottom: 10,
        right: 15,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const RatingandReviewsPage(),
              ),
            );
          },
          child: Row(
            children: [
              Image.asset('assets/images/RatingReviewsSmallStar.png'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "4.2 rating",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              )
            ],
          ),
        ),
      )
    ]);
  }

  Widget setUpText() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Restaurant Name",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
            // textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Afgan, Mugali, Chinese, Italian",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            //  textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Full Halal",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF23A365)),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Brooklyn, New York, 113300",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "2.3 miles away",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Description",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AddReviewPage(),
                    ),
                  );
                },
                child: const Text(
                  "Write a review",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF23A365),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets.",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget setUpButton() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CommonButtonField(
            height: 55,
            width: 186,
            text: "Order Now",
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
        ],
      ),
    );
  }
}
