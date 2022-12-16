


import 'package:flutter/material.dart';
import 'package:job_ui/constants/string.dart';

import '../constants/colors.dart';

class OverView extends StatelessWidget {
  const OverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        const Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
              child: Text("$summary", textAlign: TextAlign.left, style: TextStyle(fontSize: 16),),
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
