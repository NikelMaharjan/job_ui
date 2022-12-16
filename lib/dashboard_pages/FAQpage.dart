


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_ui/constants/colors.dart';
import 'package:job_ui/widgets/app_bar.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(),
          body:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const Text("Frequently Asked Questions", style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 2),),

                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [

                        ExpansionTile(
                          collapsedTextColor: Colors.grey,
                          textColor: Colors.black,
                          collapsedIconColor: Colors.black,
                          iconColor: Colors.black,




                          title: Text(
                            "What is Turing?",
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "We are a Palo Alto-based 'deep' jobs platform allowing talented software developers to work with top US firms from the comfort of their homes. We are led by Stanford alumni and successful A.I. entrepreneurs Jonathan Siddharth and Vijay Krishnan.",
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),


                        ExpansionTile(
                          collapsedTextColor: Colors.grey,
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          collapsedIconColor: Colors.black,




                          title: Text(
                            "What kind of developers does Turing hire?",
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "We, at Turing, hire remote developers for over 100 skills like React/Node, Python, Angular, Swift, React Native, Android, Java, Rails, Golang, PHP, Vue, among several others. We also hire engineers based on tech roles and seniority.",
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),

                        ExpansionTile(
                          collapsedTextColor: Colors.grey,
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          collapsedIconColor: Colors.black,



                          title: Text(
                            "How is Turing different from other remote based job providers?",
                          ),
                          children: <Widget>[
                       ListTile(
                      title: Text(
                          "It is the combination of our core business model and values that makes us different from others. We provide full-time, long-term projects to remote developers whereas most of our competitors offer more freelance jobs",
                          style: TextStyle(fontSize: 14),
                    ),
          )
        ],
      ),



                        ExpansionTile(
                          collapsedTextColor: Colors.grey,
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          collapsedIconColor: Colors.black,


                          title: Text(
                            "How many rounds do I need to clear before selection?",
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "After uploading your resume, you will have to go through the three tests -- seniority assessment, tech stack test, and live coding challenge. Once you clear these tests, you are eligible to apply to a wide range of jobs available based on your skills.",
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),


                        ExpansionTile(
                          collapsedTextColor: Colors.grey,
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          collapsedIconColor: Colors.black,


                          title: Text(
                            "What level English is necessary to get a job?",
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "Communication is crucial for success while working with American clients. We prefer candidates with a B1 level of English i.e. those who have the necessary fluency to communicate without effort with our clients and native speakers.",
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),


                        ExpansionTile(
                          collapsedTextColor: Colors.grey,
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          collapsedIconColor: Colors.black,


                          title: Text(
                            "Do developers need to pay any fees for Turing's services?",
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "No, the service is absolutely free for software developers who sign up.",
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),

                        ExpansionTile(
                          collapsedTextColor: Colors.grey,
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          collapsedIconColor: Colors.black,


                          title: Text(
                           "When working with Turing do I need to pay taxes in the U.S. or in my country?",
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "No, you don't need to pay any taxes in the U.S. However, you might need to pay taxes according to your country’s tax laws. Also, your bank might charge you a small amount as a transaction fee.",
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),

                        ExpansionTile(
                          collapsedTextColor: Colors.grey,
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          collapsedIconColor: Colors.black,

                          title: Text(
                            "Does Turing hire fresh graduates?",
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "Ideally, a remote developer needs to have at least 3 years of relevant experience to get hired by Turing, but at the same time, we don't say no to exceptional developers. Take our test to find out if we could offer something exciting for you.",
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),


                        ExpansionTile(
                          collapsedTextColor: Colors.grey,
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          collapsedIconColor: Colors.black,


                          title: Text(
                            "Do you have positions for any other profile apart from developers?",
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                "Currently, we have openings only for the developers because of the volume of job demands from our clients. But in the future, we might expand to other roles too. Do check out our careers page periodically to see if we could offer a position that suits your skills and experience.",
                                style: TextStyle(fontSize: 14),
                              ),
                            )
                          ],
                        ),












                      ],
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: const Text("Contacts", style: TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 2),),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        _buildSocialIcons("https://cdn3.iconfinder.com/data/icons/social-media-black-white-2/512/BW_Facebook_glyph_svg-512.png"),
                        _buildSocialIcons("https://cdn1.iconfinder.com/data/icons/social-media-circle-7/512/Circled_Twitter_svg-512.png"),
                        _buildSocialIcons("https://cdn1.iconfinder.com/data/icons/social-media-circle-7/512/Circled_Instagram_svg-512.png"),
                        _buildSocialIcons("https://cdn1.iconfinder.com/data/icons/social-media-circle-7/512/Circled_Linkedin_svg-512.png"),
                        _buildSocialIcons("https://cdn1.iconfinder.com/data/icons/social-media-circle-7/512/Circled_Youtube_svg-1024.png"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }

  Container _buildSocialIcons(String url) {
    return Container(
                    margin: EdgeInsets.only(right: 14),
                      child: CachedNetworkImage(imageUrl: url, height: 30, width: 30,));
  }
}


