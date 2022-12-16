


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_ui/colors.dart';
import 'package:job_ui/description_page.dart';
import 'package:job_ui/overview_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(

                    children: [

                      Container(
                        height: 280,
                      ),
                      Container(
                        height: 230,
                        width: double.infinity,
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Image.asset('assets/images/cover.jpeg', fit: BoxFit.fitWidth,)),
                      ),

                      Positioned(
                        top: 170,
                        right: 140,


                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage('https://img.icons8.com/color/512/flutter.png'),
                        ),
                      ),


                    ],
                  ),
                  Text("Flutter Intern", style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold
                  ),),

                  SizedBox(height: 6,),
                  Text("Physical, Mind Risers, PutaliSadak", style: TextStyle(
                      color: Colors.grey
                  ),),

                  SizedBox(height: 10,),


                  Container(
                    width: 300,
                    child: TabBar(
                      indicatorColor: Colors.white,
                      labelColor: Colors.white,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                      unselectedLabelColor: Colors.black,


                      indicator: BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.circular(12)
                      ),




                      tabs: [

                        Tab(


                          text: "OVERVIEW",
                        ),
                        Tab(
                          text: "DESCRIPTION",
                        )

                      ],
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TabBarView(
                          physics: NeverScrollableScrollPhysics(),
                          children: [

                            OverView(),

                            DescriptionPage(),

                          ],
                        ),
                      )
                  )
                ],
              ),



            )
        ),
      ),
    );
  }
}
