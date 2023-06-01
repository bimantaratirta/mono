import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routeName = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const [
        Center(child: Text("Home")),
        Center(child: Text("Chart")),
        Center(child: Text("Profile")),
      ].elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: CColor.green,
        unselectedItemColor: CColor.lightGrey,
        backgroundColor: Colors.grey.shade100,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart_rounded,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
