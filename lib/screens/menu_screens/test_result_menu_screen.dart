import 'package:flutter/material.dart';
import 'package:mb_report/screens/menu_screens/exam_prep_menu_screen.dart';
import 'package:mb_report/screens/menu_screens/school_announcement_menu_screen.dart';

import '../signIn_pages/signIn.dart';
class TestResultMenu extends StatelessWidget {
  const TestResultMenu({Key? key}) : super(key: key);

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
              'images/test_result.png',
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
                  'Test Result',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                )),
            SizedBox(
              height: 40,
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
