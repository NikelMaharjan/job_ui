


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_ui/constants/colors.dart';
import 'package:job_ui/dashboard_pages/detail_page.dart';
import 'package:job_ui/widgets/app_bar.dart';
import 'package:get/get.dart';

class JobListPage extends StatelessWidget {
  const JobListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: MyAppBar(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      color: const Color(0xffEFEFEF),
                      elevation: 1,
                      child: TextFormField(
                          decoration:  InputDecoration(
                              border: InputBorder.none,
                              hintText:  "Design Internship",
                              hintStyle: const TextStyle(fontSize: 14),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),



                              suffixIcon: Container(
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

                    Text("21 Jobs Available", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold), ),

                    const SizedBox(height: 20,),


                    _buildListTile(context, title: 'FLutter Intern', url: 'https://img.icons8.com/color/512/flutter.png', location: 'Mind Riser, Putalisadak'),
                    _buildListTile(context, title: 'PHP', url: 'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/256_Php_logo-512.png', location: 'WaftTech, Kupondole', cardText: "+3"),
                    _buildListTile(context, title: 'Staff Business', url: 'https://cdn4.iconfinder.com/data/icons/office-and-business-conceptual-flat/169/10-512.png', location: 'EkBana, Kathmandu'),
                    _buildListTile(context, title: 'Laravel Intern', url: 'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/194_Laravel_logo_logos-1024.png', location: 'Young Innovations, Lalitpur', cardText: "+2"),
                    _buildListTile(context, title: 'IOS Developer', url: 'https://cdn1.iconfinder.com/data/icons/picons-social/57/social_ios-1024.png', location: 'Next Nepal, Tinkunae'),
                    _buildListTile(context, title: 'Database', url: 'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/mysql-512.png', location: 'Mind Riser, Putalisadak'),
                    _buildListTile(context, title: 'Python Developer', url: 'https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/267_Python_logo-512.png', location: 'Mind Riser, Putalisadak'),












                  ],
                ),
              ),
            )
        )
    );
  }

  InkWell _buildListTile(BuildContext context ,{required String title, required String url, required String location, String? cardText}) {
    return InkWell(
                  onTap: (){

                    Get.to(()=> const DetailPage(), transition: Transition.leftToRight);


                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      title:  Text(title, style: TextStyle(color: black, fontWeight: FontWeight.bold),),
                      leading: Image.network(url),
                      subtitle:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Text(location, style: TextStyle(color: Colors.grey),),
                          ),

                          Row(
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Intern"),
                                ),
                              ),


                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Full Time"),
                                ),
                              ),

                              cardText != null ? Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(cardText),
                                ),
                              ) : Container(),
                            ],
                          )
                        ],
                      ),
                      trailing: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: (){},
                        icon: const Icon(Icons.more_vert),
                      ),
                    ),
                  ),
                );
  }
}
