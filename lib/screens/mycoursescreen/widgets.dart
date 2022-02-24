  import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Padding progressBar() {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: LinearPercentIndicator(
                  lineHeight: 12.0,
                  percent: 0.4,
                  backgroundColor: Color(0xffbfc9ca),
                  progressColor: Colors.blue,
                  barRadius: Radius.circular(10),
                ),
              );
  }

  Padding videoCount() {
    return Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '10 Video',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik',
                      ),
                    ),
                    Text(
                      '15 Video',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik',
                      ),
                    ),
                  ],
                ),
              );
  }

  ListTile listTile() {
    return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      Image.network('https://picsum.photos/250?image=9')
                          .image,
                ),
                title: Text(
                  'Digital Marketing',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik',
                  ),
                ),
                subtitle: Text(
                  'Instructure:Bagas Bartadiga',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Rubik',
                  ),
                ),
              );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'My Course',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Rubik',
        ),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }