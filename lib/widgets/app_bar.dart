


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_ui/dashboard_pages/dashboard_page.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {



  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      elevation: 0,
      backgroundColor: const Color(0xffFDFBF7),
      leading: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  DashBoardPage()),);





          },
            child: Image.asset('assets/images/icon.png')),
      ),
      title: const Text("Turing", style: TextStyle(color: Color(0xff1C1E22), fontWeight: FontWeight.bold, fontSize: 22, letterSpacing: 2),),
      actions: [

        Container(
          margin: const EdgeInsets.only(right: 20),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color:  Color(0xff1C1E22),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.person, color: Colors.white, size: 30,),
            ),
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}


