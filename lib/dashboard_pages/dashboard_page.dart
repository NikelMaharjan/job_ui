




import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:job_ui/constants/colors.dart';
import 'package:job_ui/dashboard_pages/detail_page.dart';
import 'package:job_ui/dashboard_pages/home_page.dart';
import 'package:job_ui/dashboard_pages/profile_page.dart';
import 'package:job_ui/dashboard_pages/FAQpage.dart';



class DashBoardPage extends StatefulWidget {
  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [

    HomePage(),


    ProfilePage(),

    FAQPage(),
  ];



  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffFDFBF7),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: black,
          currentIndex: _selectedIndex,
          onTap: (index) {

            setState(() {
              _selectedIndex = index;
            });


          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.question_answer), label: 'FAQ'),
          ]),
    );
  }
}
