


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_ui/dashboard_page.dart';
import 'package:job_ui/home_page.dart';

void main () async{

  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(Duration(microseconds: 5000));

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xffFDFBF7),
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark

  ));
  runApp(Home());
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),


      ),
      debugShowCheckedModeBanner: false,
        home: DashBoardPage()
    );
  }
}
