import 'package:flutter/material.dart';
import 'package:flutter_july_3_netflix_clone/utils/constants/color_constants.dart';
import 'package:flutter_july_3_netflix_clone/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:flutter_july_3_netflix_clone/view/download_screen/download_screen.dart';
import 'package:flutter_july_3_netflix_clone/view/home_screen/home_screen.dart';
import 'package:flutter_july_3_netflix_clone/view/more_screen/more_screen.dart';
import 'package:flutter_july_3_netflix_clone/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  List<Widget> myScreens = [
    HomeScreen(),
    SearchScreen(),
    CommingSoonSreen(),
    DownloadScreen(),
    Morescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedIndex],
      backgroundColor: ColorConstants.mainblack,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: ColorConstants.mainblack,
        selectedItemColor: ColorConstants.mainwhite,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined),
              label: "Coming soon"),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download_sharp), label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
