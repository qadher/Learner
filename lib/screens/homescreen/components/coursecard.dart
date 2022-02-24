import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  CourseCard(
      {Key? key,
      required this.imageData,
      required this.courseName,
      required this.authorName,
      required this.coursePrice,
      required this.authorImage})
      : super(key: key);

  final String imageData;
  final String courseName;
  final String authorImage;
  final String authorName;
  final int coursePrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .25,
          width: MediaQuery.of(context).size.width * .55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            image: DecorationImage(
              image: NetworkImage(imageData),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courseName,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(authorImage),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            authorName,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Rubik',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '\$ $coursePrice',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
