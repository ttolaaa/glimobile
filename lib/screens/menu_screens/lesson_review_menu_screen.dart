import 'package:flutter/material.dart';
import 'package:mb_report/screens/menu_screens/exam_prep_menu_screen.dart';

import '../signIn_pages/signIn.dart';
import 'class_stories_intro.dart';
class LessonReviewMenu extends StatelessWidget {
  const LessonReviewMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage('images/App Material Design.png'),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              'images/lessonReview.png',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                alignment: Alignment.center,
                child: const Text(
                  'Lesson Review',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                alignment: Alignment.center,
                child: const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                )),
          ],
        ),
      ),
    );

  }
}
