import 'package:flutter/material.dart';

import '../../mycoursescreen/mycoursescreen.dart';

class VideoList extends StatelessWidget {
 VideoList({ Key? key, required this.title, required this.videoCount }) : super(key: key);

 final String title;
  final int videoCount;

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Colors.white,
    ),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyCourseScreen()),
        );
      },
      child: ListTile(
        leading: CircleAvatar(child: Icon(Icons.play_circle_outline)),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Rubik',
          ),
        ),
        subtitle: Text(
          '$videoCount Video',
          style: TextStyle(
            fontFamily: 'Rubik',
          ),
        ),
        trailing: Icon(Icons.chevron_right),
      ),
    ),
  );
  }
}