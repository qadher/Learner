import 'package:edutech/components/images.dart';
import 'package:edutech/screens/homescreen/components/coursecard.dart';
import 'package:edutech/screens/homescreen/components/menucard.dart';
import 'package:edutech/screens/homescreen/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .35,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 0.0),
                          colors: [Color(0xff28313B), Color(0xff485461)])),
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      appBar(),
                      searchBar(),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xfff4f6f6),
                  padding: EdgeInsets.only(top: 75, left: 20),
                  child: Column(
                    children: [
                      trendingCourseText(),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            CourseCard(
                                imageData: socialMediaImage,
                                courseName: 'Social Media Marketing',
                                authorName: 'Marcellino',
                                coursePrice: 20,
                                authorImage: authorImage),
                            SizedBox(width: 20),
                            CourseCard(
                                imageData: bussinessImage,
                                courseName: 'Business',
                                authorName: 'Alfredo Covelli',
                                coursePrice: 29,
                                authorImage: authorImage2),
                            SizedBox(width: 20),
                            CourseCard(
                                imageData: designImage,
                                courseName: 'Graphic Design',
                                authorName: '	Dalai Lama',
                                coursePrice: 35,
                                authorImage: authorImage3),
                            SizedBox(width: 20),
                            CourseCard(
                                imageData: marketingImage,
                                courseName: 'Marketing',
                                authorName: 'Hunter Biden ',
                                coursePrice: 19,
                                authorImage: authorImage4),
                            SizedBox(width: 20),
                            CourseCard(
                                imageData: codingImage,
                                courseName: 'Coding',
                                authorName: 'Samir Soni',
                                coursePrice: 25,
                                authorImage: authorImage5),
                            SizedBox(width: 20),
                            CourseCard(
                                imageData: bussinessImage2,
                                courseName: 'Analytics',
                                authorName: 'Ruskin Bond',
                                coursePrice: 30,
                                authorImage: authorImage6),
                            SizedBox(width: 20),
                          ],
                        ),
                      ),
                      // searchBar(),
                      // SizedBox(height: 20),
                      // searchBar(),
                      // SizedBox(height: 20),
                      // searchBar(),
                      // SizedBox(height: 20),
                      // searchBar(),
                      // SizedBox(height: 20),
                      // searchBar(),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .28,
                  right: 20.0,
                  left: 20.0),
              child: Row(
                children: [
                  MenuCard(icon: Icons.code_sharp, text: 'Coding'),
                  MenuCard(icon: Icons.design_services, text: 'Designing'),
                  MenuCard(icon: Icons.business, text: 'Business'),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
