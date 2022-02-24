import 'package:edutech/screens/coursescreen/coursescreen.dart';
import 'package:flutter/material.dart';

ListTile appBar() {
  return ListTile(
    title: Text(
      'Hi,Qadher',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Rubik',
      ),
    ),
    subtitle: Text(
      'Let\'s start learning',
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontFamily: 'Rubik',
      ),
    ),
    trailing: Icon(
      Icons.home,
      color: Colors.white,
    ),
  );
}

Container searchBar() {
  return Container(
    padding: EdgeInsets.all(20),
    child: TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black),
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: 'Search for anything',
        //hint text style
        hintStyle: TextStyle(
          fontFamily: 'Rubik',
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
    ),
  );
}

Row trendingCourseText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Trending Courses',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: 'Rubik',
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text(
          'See All',
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue,
            fontFamily: 'Rubik',
          ),
        ),
      ),
    ],
  );
}
