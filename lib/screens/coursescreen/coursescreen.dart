import 'package:edutech/screens/coursescreen/components/videoList.dart';
import 'package:edutech/screens/coursescreen/widgets.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6f6),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                Stack(
                  children: [
                    imageCard(),
                    backButton(context),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title(),
                    SizedBox(height: 10),
                    authorAndRating(),
                    SizedBox(height: 20),
                    descriptionText(),
                    SizedBox(height: 20),
                    VideoList(title: 'Introductions', videoCount: 1),
                    SizedBox(height: 20),
                    VideoList(title: 'Social Media Marketing', videoCount: 5),
                    SizedBox(height: 20),
                    VideoList(title: 'Facebook', videoCount: 3),
                    SizedBox(height: 20),
                    VideoList(title: 'Twitter', videoCount: 2),
                    SizedBox(height: 20),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
