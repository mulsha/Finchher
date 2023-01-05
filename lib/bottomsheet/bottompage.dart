import 'package:fincherr/bottomsheet/Home/home.dart';
import 'package:fincherr/bottomsheet/Trending/trending.dart';
import 'package:fincherr/bottomsheet/profile/profile.dart';
import 'package:fincherr/bottomsheet/topartis/tophome.dart';
import 'package:flutter/material.dart';

class bottompage extends StatefulWidget {
  const bottompage({Key? key}) : super(key: key);

  @override
  State<bottompage> createState() => _bottompageState();
}

class _bottompageState extends State<bottompage> {
  int selectindex = 0;
  List pages = [home(),trending(),tophome(),profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectindex,
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Color(0XFF2D52EF),
          unselectedItemColor: Color(0XFFB4B4B4),
          onTap: (value) {
            setState(() {
              selectindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.trending_up_outlined), label: 'Trending'),
            BottomNavigationBarItem(
                icon: Icon(Icons.flare_outlined), label: 'Top Artist'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Profile')
          ]),
    );
  }
}
