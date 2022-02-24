import 'package:edutech/components/images.dart';
import 'package:edutech/screens/coursescreen/coursescreen.dart';
import 'package:edutech/screens/mycoursescreen/mycoursescreen.dart';
import 'package:flutter/material.dart';



Positioned backButton(BuildContext ctx1) {
  return Positioned(
    top: 20,
    left: 20,
    child: GestureDetector(
      onTap: () => Navigator.pop(ctx1),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_back),
        ),
      ),
    ),
  );
}

Container imageCard() {
  return Container(
    height: 300,
    width: double.infinity,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(socialMediaImage),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}

Text descriptionText() {
  return Text(
    'Manage Your Social Strategies. Expand your online audience and establish your social brand in five courses.',
    style: TextStyle(
        fontSize: 16,
        color: Colors.grey,
        fontFamily: 'Rubik',
        height: 1.5,
        letterSpacing: 0.7,
        wordSpacing: 1),
  );
}

Row authorAndRating() {
  return Row(
    children: [
      Icon(Icons.person),
      SizedBox(width: 10),
      Text(
        'Marcellino',
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Rubik',
        ),
      ),
      SizedBox(width: 30),
      Icon(
        Icons.star,
        color: Colors.yellow,
      ),
      SizedBox(width: 10),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '4.9',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Rubik',
              ),
            ),
            TextSpan(
              text: ' (1,000 Ratings)',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontFamily: 'Rubik',
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Text title() {
  return Text(
    'Social Media Marketing',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Rubik',
    ),
  );
}
