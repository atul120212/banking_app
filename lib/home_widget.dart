import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'screens/home.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}
//used for Bottom Nav bar

class _HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions= <Widget>[
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
    void onTabTapped(index){
      setState(() {
        selectedIndex = index;

      });
    }
    
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: onTabTapped,
        elevation: 0,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/home-icon.svg'),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/transactions-icon.svg'),
            label: 'Tansactions',
            ),
            BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/settings-icon.svg'),
            label: 'Settings',
            ),
            BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/smiley-icon.svg'),
            label: 'Account',
            ),
        ],
      ),
    );
  }
}