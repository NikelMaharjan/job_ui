


import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_ui/constants/colors.dart';
import 'package:job_ui/dashboard_pages/detail_page.dart';
import 'package:job_ui/dashboard_pages/job_list_page.dart';
import 'package:job_ui/dashboard_pages/view_all_category_page.dart';
import 'package:job_ui/widgets/app_bar.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffFDFBF7),
        appBar: MyAppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [




                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: black, fontSize: 20, letterSpacing: 2),
                      children: <TextSpan>[
                        TextSpan(text: 'Welcome back,', style: TextStyle(fontWeight: FontWeight.w400)),
                        TextSpan(text: ' Nikel', style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),








                  Card(
                    color: const Color(0xffEFEFEF),
                    elevation: 1,
                    child: TextFormField(
                        decoration:  InputDecoration(
                            border: InputBorder.none,
                            hintText:  "Search by title, company",
                            hintStyle: const TextStyle(fontSize: 14),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),

                            suffixIcon: SizedBox(
                              width: 140,
                              child: Card(
                                child: Padding(
                                  padding:  const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      const Icon(CupertinoIcons.location_solid, color: black,),
                                      const Text("Kathmandu"),
                                    ],
                                  ),
                                ),
                              ),
                            )

                        )
                    ),
                  ),

                  const SizedBox(height: 20,),


                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: black, fontSize: 20, letterSpacing: 2),
                      children: <TextSpan>[
                        TextSpan(text: 'Why businesses choose', style: TextStyle(fontWeight: FontWeight.w400)),
                        TextSpan(text: ' Turing', style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),


                  const SizedBox(height: 20,),






                  CarouselSlider(
                      items: [
                        _buildCarousel(
                            url: "https://cdn4.iconfinder.com/data/icons/the-weather-is-nice-today/64/weather_11-512.png",
                            title: 'Speed',
                            text1: '4 days',
                            text2: 'to fill ',
                            text3: 'most roles',
                            text4: 'sometime some day.'),


                        _buildCarousel(
                            url: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/time-512.png",
                            title: 'Time Saved',
                            text1: '50+ hours',
                            text2: 'of engineering team time ',
                            text3: 'saved',
                            text4: 'per developer '),


                        _buildCarousel(
                            url: "https://cdn4.iconfinder.com/data/icons/multimedia-75/512/multimedia-10-512.png",
                            title: 'Retention',
                            text1: '97%',
                            text2: 'engagement',
                            text3: '',
                            text4: 'success rate.'),

                      ],
                      options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                        viewportFraction: 0.8,
                      )
                  ),



                  const SizedBox(height: 20,),


                  // SingleChildScrollView(
                  //   physics: BouncingScrollPhysics(),
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: [
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               Container(
                  //                 margin: EdgeInsets.only(right: 20),
                  //                   decoration: BoxDecoration(
                  //                       border: Border.all(color: Colors.grey.shade500)
                  //                   ),
                  //                 height: 200,
                  //                   width: 220,
                  //                   child: Padding(
                  //                     padding: const EdgeInsets.all(8.0),
                  //                     child: Image.asset('assets/images/imagee.png', fit: BoxFit.cover,),
                  //                   )),
                  //               Padding(
                  //                 padding: const EdgeInsets.only(top: 8.0),
                  //                 child: Text("Elite US Jobs", style: TextStyle(color: Color(0xff1C1E22), fontSize: 18, fontWeight: FontWeight.bold),),
                  //               ),
                  //               Padding(
                  //                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                  //                 child: Container(
                  //                   width: 180,
                  //                   child: Text("Turing’s developers earn better than market pay in most countries, working with top US companies.", textAlign: TextAlign.center,)
                  //
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //
                  //         ],
                  //       ),
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               Container(
                  //                   margin: EdgeInsets.only(right: 20),
                  //
                  //                   decoration: BoxDecoration(
                  //                       border: Border.all(color: Colors.grey.shade500)
                  //                   ),
                  //                   height: 200,
                  //                   width: 220,
                  //                   child: Padding(
                  //                     padding: const EdgeInsets.all(8.0),
                  //                     child: Image.asset('assets/images/imagee.png', fit: BoxFit.cover,),
                  //                   )),
                  //               Padding(
                  //                 padding: const EdgeInsets.only(top: 8.0),
                  //                 child: Text("Career Growth", style: TextStyle(color: Color(0xff1C1E22), fontSize: 18, fontWeight: FontWeight.bold),),
                  //               ),
                  //               Padding(
                  //                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                  //                 child: Container(
                  //                     width: 180,
                  //                     child: Text("Grow rapidly by working on challenging technical and business problems on the latest technologies", textAlign: TextAlign.center,)
                  //
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //
                  //         ],
                  //       ),
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Column(
                  //             children: [
                  //               Container(
                  //                   margin: EdgeInsets.only(right: 20),
                  //
                  //                   decoration: BoxDecoration(
                  //                       border: Border.all(color: Colors.grey.shade500)
                  //                   ),
                  //                   height: 200,
                  //                   width: 220,
                  //                   child: Padding(
                  //                     padding: const EdgeInsets.all(8.0),
                  //                     child: Image.asset('assets/images/imagee.png', fit: BoxFit.cover,),
                  //                   )),
                  //               Padding(
                  //                 padding: const EdgeInsets.only(top: 8.0),
                  //                 child: Text("Career Growth", style: TextStyle(color: Color(0xff1C1E22), fontSize: 18, fontWeight: FontWeight.bold),),
                  //               ),
                  //               Padding(
                  //                 padding: const EdgeInsets.symmetric(vertical: 8.0),
                  //                 child: Container(
                  //                     width: 180,
                  //                     child: Text("Grow rapidly by working on challenging technical and business problems on the latest technologies", textAlign: TextAlign.center,)
                  //
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //
                  //         ],
                  //       ),
                  //
                  //
                  //     ],
                  //   ),
                  // ),



                  
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Categories", style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 2),),
                      
                      InkWell(
                        onTap: (){
                          Get.to(() => ViewAllCategoryPage(), transition: Transition.leftToRight);
                        },
                        child: Row(
                          children: [
                            Text("View all"),
                            Icon(Icons.navigate_next),
                          ],
                        ),
                      )
                      
                    ],
                  ),

                  const SizedBox(height: 20,),



                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Card(
                          color: const Color(0xff1C1E22),
                           elevation: 4,

                           shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),),
                          child: SizedBox(
                            height: 200,
                            width: 350,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Based on Skills", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 3), ),
                                  SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        _buildIcons(context,"https://cdn0.iconfinder.com/data/icons/logos-brands-in-colors/128/react_color-1024.png"),
                                        const SizedBox(width: 20,),
                                        _buildIcons(context,"https://cdn1.iconfinder.com/data/icons/unicons-line-vol-4/24/java-script-1024.png"),
                                        const SizedBox(width: 20,),
                                        _buildIcons(context,"https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/267_Python_logo-512.png"),
                                        const SizedBox(width: 20,),
                                        _buildIcons(context,"https://cdn3.iconfinder.com/data/icons/logos-brands-3/24/logo_brand_brands_logos_android-1024.png"),
                                        const SizedBox(width: 20,),
                                        _buildIcons(context,"https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/181_Java_logo_logos-1024.png"),
                                        const SizedBox(width: 20,),

                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      RichText(
                                        text: const TextSpan(
                                          style: TextStyle(color: Colors.white),
                                          children: <TextSpan>[
                                            TextSpan(text: '24', style: TextStyle(fontSize: 22)),
                                            TextSpan(text: ' Jobs Avaiable')
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){

                                          Get.to(()=> const JobListPage(), transition: Transition.leftToRight);


                                        },

                                        child: Row(
                                          children: [
                                            const Text("Show all", style: TextStyle(color: Colors.white),),
                                            const Icon(CupertinoIcons.forward, color: Colors.white,)
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: const Color(0xffFFFFFF),
                          elevation: 4,


                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),),
                          child: SizedBox(
                            height: 200,
                            width: 350,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Based on roles", style: TextStyle(color: Color(0xff1C1E22), fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 3), ),
                                  SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [


                                        _buildIcons(context,"https://cdn3.iconfinder.com/data/icons/roles-computer-it/128/front-end_developer-2-1024.png"),
                                        const SizedBox(width: 20,),
                                        _buildIcons(context,"https://cdn1.iconfinder.com/data/icons/unicons-line-vol-4/24/java-script-1024.png"),
                                        const SizedBox(width: 20,),
                                        _buildIcons(context,"https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/267_Python_logo-512.png"),
                                        const SizedBox(width: 20,),
                                        _buildIcons(context,"https://cdn3.iconfinder.com/data/icons/logos-brands-3/24/logo_brand_brands_logos_android-1024.png"),
                                        const SizedBox(width: 20,),
                                        _buildIcons(context,"https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/181_Java_logo_logos-1024.png"),
                                        const SizedBox(width: 20,),



                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                          style: TextStyle(color: black, fontWeight: FontWeight.w600),
                                          children: <TextSpan>[
                                            TextSpan(text: '16', style: TextStyle(fontSize: 22)),
                                            TextSpan(text: ' Jobs Avaiable')
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Get.to(()=> const JobListPage(), transition: Transition.leftToRight);
                                        },
                                        child: Row(
                                          children: [
                                            const Text("Show all", style: TextStyle(color: Color(0xff1C1E22), fontWeight: FontWeight.w600),),
                                            const Icon(CupertinoIcons.forward, color: Color(0xff1C1E22),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  const SizedBox(height: 20,),



                  const Text("New Hiring", style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 2),),

                  const SizedBox(height: 20,),


                  _buildListTile(context, title: 'FLutter Intern', url: 'https://img.icons8.com/color/512/flutter.png', location: 'Intern, Mind Riser, Putalisadak'),
                  _buildListTile(context, title: 'PHP', url: 'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/256_Php_logo-512.png', location: 'Full Time, WaftTech, Kupondole'),
                  _buildListTile(context, title: 'Staff Business', url: 'https://cdn4.iconfinder.com/data/icons/office-and-business-conceptual-flat/169/10-512.png', location: 'Remote, EkBana, Kathmandu'),
                  _buildListTile(context, title: 'Laravel Intern', url: 'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/194_Laravel_logo_logos-1024.png', location: 'Intern, Mind Riser, Putalisadak'),











                ],
              ),
            ),
          )
      ),
    );
  }

  Card _buildCarousel({required String url, required String title,  required String text1, required String text2, required String text3, required String text4}) {
    return Card(
                        elevation: 2,
                        child: SizedBox(
                          width: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                    elevation: 2,
                                      child: CachedNetworkImage(imageUrl: url, height: 40, width: 40, color: black,)),
                                  const SizedBox(width: 10,),
                                   Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                ],
                              ),

                              Text(text1 ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),),



                              RichText(
                                text:  TextSpan(
                                  style: TextStyle(color: black, fontSize: 16,letterSpacing: 1.2),
                                  children: <TextSpan>[

                                    TextSpan(text: text2),
                                    TextSpan(text: '$text3\n', style: TextStyle(fontWeight: FontWeight.bold, color: black)),
                                    TextSpan(text: text4, style:text4 == 'success rate.' ? TextStyle(
                                      fontWeight: FontWeight.bold
                                    ): null)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
  }

  Widget _buildListTile(BuildContext context, {required String title, required String url, required String location}) {
    return InkWell(
                  onTap: (){
                    Get.to(()=> const DetailPage(), transition: Transition.leftToRight);

                  },
                  child: ListTile(
                    title:  Text(title, style: const TextStyle(color: black, fontWeight: FontWeight.bold),),
                    leading: Image.network(url),
                    subtitle:  Text(location, style: const TextStyle(color: Colors.grey),),
                    trailing: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: (){},
                      icon: const Icon(Icons.more_vert),
                    ),
                  ),
                );
  }

  Widget _buildIcons(BuildContext context, String url) {
    return InkWell(
        onTap: (){
          Get.to(()=> const DetailPage(), transition: Transition.leftToRight);
          },
        child: CachedNetworkImage(imageUrl: url, height: 60, width: 60,));
  }
}
