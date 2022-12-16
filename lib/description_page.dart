



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_ui/colors.dart';
import 'package:job_ui/string.dart';

class DescriptionPage extends StatelessWidget {
   DescriptionPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.white,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Job Responsibilites", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                        SizedBox(height: 8,),

                        Text("$responsibilities", textAlign: TextAlign.left, style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ),
                  SizedBox(height: 18,),
                  Container(
                    padding: EdgeInsets.all(12),
                    color: Colors.white,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Minimum requirements", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                        SizedBox(height: 8,),

                        Text("$requirements", textAlign: TextAlign.left, style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: black
                  ),
                    onPressed: (){}, child: const Text("Apply Now")),
              ),
            ),


            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey
                ),
                onPressed: (){}, child: const Icon(Icons.message)),
          ],
        ),
      ],
    );
  }

}

