import 'package:flutter/material.dart';
import 'package:flutter_application_ui/favourites.dart';
import 'package:flutter_application_ui/featured.dart';
import 'package:flutter_application_ui/filtersort.dart';
import 'package:flutter_application_ui/home.dart';
import 'package:flutter_application_ui/settings.dart';

// class BottomNav extends StatelessWidget {
// const BottomNav({Key? key}) : super(key: key);

// // This widget is the root of your application.
// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	title: 'Bottom NavBar Demo',
// 	theme: ThemeData(
// 		primaryColor: const Color(0xff2F8D46),
// 		splashColor: Colors.transparent,
// 		highlightColor: Colors.transparent,
// 		hoverColor: Colors.transparent,
// 	),
// 	debugShowCheckedModeBanner: false,
// 	home: const BottomNavigationPage(),
// 	);
// }
// }

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  // int _selectedIndex = 0;
  int currentIndex = 0;

  final PageController _pageController = PageController(initialPage: 0);

  String _appbarTitle = "Matchings";

  void _onItemTapped(int index) {
    setState(() {
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 10), curve: Curves.ease);
      // _selectedIndex = index;
      // currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          // allowImplicitScrolling: false,
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          children: const [
            HomePage(),
            FeaturedPage(),
            FavouritesPage(),
            SettingsPage(),
          ],
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`

              // canvasColor: Colors.green,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              // primaryColor: Colors.white,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(bodySmall: const TextStyle(color: Colors.yellow))),
          child: Container(
            height: 104,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF2BB673),
                  Color(0xFF23A365),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              // selectedItemColor: Colors.black,
              // unselectedItemColor:
              backgroundColor: Colors.transparent,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  // backgroundColor: Colors.white,
                  icon: ImageIcon(
                    AssetImage("assets/images/NavHome.png"),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/NavFeatured1.png"),
                  ),
                  label: 'Featured',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/NavFavourite.png"),
                  ),
                  label: 'Favourites',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/NavSettings.png"),
                  ),
                  label: 'Settings',
                ),
              ],
              currentIndex: currentIndex,
              selectedLabelStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              unselectedLabelStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              //  unselectedItemColor: color,
              //  showUnselectedLabels: false,
              //  _selectedIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: const Color(0xFF93D3B4),
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

// class Page1 extends StatelessWidget {
// const Page1({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return Container(
// 	color: const Color(0xffC4DFCB),
// 	child: Center(
// 		child: Text(
// 		"Page Number 1",
// 		style: TextStyle(
// 			color: Colors.green[900],
// 			fontSize: 45,
// 			fontWeight: FontWeight.w500,
// 		),
// 		),
// 	),
// 	);
// }
// }

// class Page2 extends StatelessWidget {
// const Page2({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return Container(
// 	color: const Color(0xffC4DFCB),
// 	child: Center(
// 		child: Text(
// 		"Page Number 2",
// 		style: TextStyle(
// 			color: Colors.green[900],
// 			fontSize: 45,
// 			fontWeight: FontWeight.w500,
// 		),
// 		),
// 	),
// 	);
// }
// }

// class Page3 extends StatelessWidget {
// const Page3({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return Container(
// 	color: const Color(0xffC4DFCB),
// 	child: Center(
// 		child: Text(
// 		"Page Number 3",
// 		style: TextStyle(
// 			color: Colors.green[900],
// 			fontSize: 45,
// 			fontWeight: FontWeight.w500,
// 		),
// 		),
// 	),
// 	);
// }
// }

// class Page4 extends StatelessWidget {
// const Page4({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
// 	return Container(
// 	color: const Color(0xffC4DFCB),
// 	child: Center(
// 		child: Text(
// 		"Page Number 4",
// 		style: TextStyle(
// 			color: Colors.green[900],
// 			fontSize: 45,
// 			fontWeight: FontWeight.w500,
// 		),
// 		),
// 	),
// 	);
// }
// }
