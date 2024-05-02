import 'package:bloodlink_app/constrins.dart';
import 'package:bloodlink_app/screens/dashboard/account.dart';
import 'package:bloodlink_app/screens/dashboard/home.dart';
import 'package:bloodlink_app/screens/dashboard/request_screen.dart';
import 'package:bloodlink_app/screens/onboard/history.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentindex = 0;
  final List<Widget> pages = [
    const HomeScreen(),
    const RequestScreen(),
    const HistoryScreen(),
    const AccountScreen()
  ];

  void onTapped(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: pages[currentindex],
      bottomNavigationBar: SizedBox(
        height: 75,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            iconSize: 20.0,
            elevation: 0,
            selectedIconTheme: const IconThemeData(size: 22.0),
            selectedItemColor: primaryColor,
            unselectedItemColor: secondprimaryColor2,
            selectedFontSize: 16.0,
            unselectedFontSize: 12,
            currentIndex: currentindex,
            onTap: onTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.note_add_rounded),
                label: "Requests",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: "History",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_pin),
                label: "Account",
              ),
            ]),
      ),
    );
  }
}
