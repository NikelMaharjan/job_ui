

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:job_ui/colors.dart';
import 'package:get/get.dart';
import 'package:job_ui/detail_page.dart';

class ViewAllCategoryPage extends StatelessWidget {
  const ViewAllCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(


                children: [


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: const Text("Based on skill", style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 20),),
                  ),



                  Container(


                    color: Colors.white,

                    child: Container(

                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [



                          Wrap(
                            children: [
                              _buildCardItems(image: "https://img.icons8.com/color/512/flutter.png", title: " Flutter"),
                              _buildCardItems(image: "https://cdn0.iconfinder.com/data/icons/logos-brands-in-colors/128/react_color-1024.png", title: " React.Js"),
                              _buildCardItems(image: "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/233_Node_Js_logo-512.png", title: " React/Node"),
                              _buildCardItems(image: "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/256_Php_logo-512.png", title: " PHP"),
                              _buildCardItems(image: "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/194_Laravel_logo_logos-1024.png", title: " Laravel"),
                              _buildCardItems(image: "https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/mysql-512.png", title: " MySql"),
                              _buildCardItems(image: "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/267_Python_logo-512.png", title: " Python"),
                              _buildCardItems(image: "https://cdn3.iconfinder.com/data/icons/logos-brands-3/24/logo_brand_brands_logos_android-512.png", title: " Android"),
                              _buildCardItems(image: "https://cdn1.iconfinder.com/data/icons/picons-social/57/social_ios-512.png", title: " IOS"),
                              _buildCardItems(image: "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/181_Java_logo_logos-1024.png", title: " JAVA"),
                              _buildCardItems(image: "https://img.icons8.com/color/512/flutter.png", title: " Flutter"),


                            ],
                          ),

                        ],
                      ),
                    ),
                  ),




                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: const Text("Based on Roles", style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 20,),),
                  ),

                  Container(


                    color: Colors.white,

                    child: Container(

                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [



                          Wrap(
                            children: [

                              _buildCardItems(image: "https://cdn2.iconfinder.com/data/icons/ux-and-ui-astute-vol-1/512/Full_Stack_Developer-512.png", title: " Full-Stack"),
                              _buildCardItems(image: "https://cdn1.iconfinder.com/data/icons/data-science-flat-1/64/programming-developer-backend-laptop-algorithm-512.png", title: " Back-End"),
                              _buildCardItems(image: "https://cdn3.iconfinder.com/data/icons/roles-computer-it/128/front-end_developer-2-512.png", title: " Front-End"),
                              _buildCardItems(image: "https://cdn1.iconfinder.com/data/icons/devops-cycle/256/devops_cycle_2_flat-512.png", title: " DevOps"),
                              _buildCardItems(image: "https://cdn1.iconfinder.com/data/icons/data-science-flat-1/64/data-visualization-chart-information-show-database-512.png", title: " Data Scientist"),
                              _buildCardItems(image: "https://cdn0.iconfinder.com/data/icons/mobile-functions-colored-outlined-pixel-perfect/64/mobile-01-512.png", title: " Mobile"),
                              _buildCardItems(image: "https://cdn1.iconfinder.com/data/icons/data-science-flat-1/64/neural-network-machine-learning-algorithm-1024.png", title: " ML Engineer"),



                            ],
                          ),

                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: const Text("Based on career trajectory", style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 20),),
                  ),






                  Container(


                    color: Colors.white,

                    child: Container(

                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [



                          Wrap(
                            children: [

                              _buildCardItems(image: "https://cdn3.iconfinder.com/data/icons/business-round-set-1/128/CAREER-512.png", title: " Software Engineer"),
                              _buildCardItems(image: "https://cdn3.iconfinder.com/data/icons/business-round-set-1/128/CAREER-512.png", title: " Software Developer"),
                              _buildCardItems(image: "https://cdn3.iconfinder.com/data/icons/business-round-set-1/128/CAREER-512.png", title: " Senior Engineer"),
                              _buildCardItems(image: "https://cdn3.iconfinder.com/data/icons/business-round-set-1/128/CAREER-512.png", title: " Software Architect"),
                              _buildCardItems(image: "https://cdn3.iconfinder.com/data/icons/business-round-set-1/128/CAREER-512.png", title: " Senior Architect"),
                              _buildCardItems(image: "https://cdn3.iconfinder.com/data/icons/business-round-set-1/128/CAREER-512.png", title: " Project Manager"),
                              _buildCardItems(image: "https://cdn3.iconfinder.com/data/icons/business-round-set-1/128/CAREER-512.png", title: " Project Manager"),



                            ],
                          ),

                        ],
                      ),
                    ),
                  ),






                ],


              ),
            ),
          )
      ),
    );
  }

  InkWell _buildCardItems({required String image, required String title}) {
    return InkWell(
                 onTap: (){
                   Get.to(()=> DetailPage(), transition: Transition.leftToRight);
                 },
                 child: Card(
                   elevation: 2,
                   child: Container(
                     width: 180,
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           CachedNetworkImage(imageUrl: image, height: 24, width: 24,),
                           Text(title, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),)
                         ],
                       ),
                     ),
                   ),
                 ),
               );
  }
}
