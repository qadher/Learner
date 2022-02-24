import 'package:flutter/material.dart';

import '../../coursescreen/coursescreen.dart';

class MenuCard extends StatelessWidget {
   MenuCard({ Key? key, required this.icon, required this.text }) : super(key: key);

   final IconData icon;
   final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 100.0,
    width: MediaQuery.of(context).size.width * .30,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CourseScreen()),
        );
      },
      child: new Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Colors.white,
        elevation: 4.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.blue,
            ),
            SizedBox(
              height: 18.0,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Rubik',
              ),
            ),
          ],
        ),
      ),
    ),
  );
  }
}