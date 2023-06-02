import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_ui/bottomnavbar.dart';
import 'package:flutter_application_ui/widgets/commonbuttonfield.dart';

// import 'package:flutter_application_ui/widgets/commontextfield.dart';

class FilterSortPage extends StatefulWidget {
  const FilterSortPage({super.key});

  @override
  State<FilterSortPage> createState() => _FilterSortPageState();
}

class _FilterSortPageState extends State<FilterSortPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: Color(0xFFF1F1F1),
          // appBar: AppBar(title: Text("Hello"),),
          body: setUpUI(),
        ),
      ),
    );
  }

  Widget setUpUI() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                setUpSearchBar(),
                // SizedBox(width: 20,),
                setUpSearchBarButton(),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          setUpListBox(),
          // SizedBox(height: 5,),
          setUpButton(),
          const SizedBox(height: 15),
          // setUpButton(),
          // setUpBottomtext(),
        ]);
  }

  Widget setUpSearchBar() {
    return Container(
      height: 37,
      width: 300,
      decoration: BoxDecoration(
          color: Color(0xFFF1F1F1),
          // border: Border.all(width: 0, color: Color(0xFF23A365)),
          boxShadow: const [
            BoxShadow(
                color: Color(0xFF23A365),
                blurRadius: 1,
                spreadRadius: 0,
                offset: Offset(0, 0)),
          ],
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: TextFormField(
          style: const TextStyle(color: Colors.black, fontSize: 20),
          textInputAction: TextInputAction.done,
          autofocus: false,
          decoration: InputDecoration(
            // contentPadding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
              child: Image.asset(
                'assets/images/Vectorsearch.png',
                height: 20,
                width: 20,
              ),
            ),
            prefixIconConstraints: const BoxConstraints(
              minHeight: 15.43,
              minWidth: 18.86,
            ),
            border: InputBorder.none,
            hintText: 'Search',
            // alignLabelWithHint: true,
            hintStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  Widget setUpSearchBarButton() {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          // color: widget.color,
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
              color: const Color(
                  0xFF27AA6B)), // border: Border.all(width: 1, color: Color(0xFF27AA6B)
          // ),
          borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "Go",
        style: TextStyle(
            fontSize: 13, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget setUpListBox() {
    return Flexible(
      child: ListView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: 8,
        itemBuilder: (context, position) {
          return Column(
            children: [
              Container(
                height: 50,
                width: 346,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "State Name",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 0,
                            color: Colors.grey,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xFF23A365),
                                blurRadius: 2,
                                spreadRadius: 0,
                                offset: Offset(0, 0)),
                          ],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Checkbox(
                          activeColor: Color(0xFF23A365),
                          side: BorderSide.none,
                          value: value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ), //Checkbox,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          );
        },
      ),
    );
  }

  Widget setUpButton() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BottomNavigationPage(),
                ),
              );
            },
            child: CommonButtonField(
              height: 55,
              width: 186,
              text: "Reset",
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
          ),
        ],
      ),
    );
  }
}
