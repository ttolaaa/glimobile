import 'package:flutter/material.dart';
import 'package:mb_report/screens/menu_screens/class_feedback_menu_screen.dart';
import 'package:mb_report/screens/menu_screens/class_stories_intro.dart';
import 'package:mb_report/screens/menu_screens/exam_prep_menu_screen.dart';
import 'package:mb_report/screens/menu_screens/lesson_review_menu_screen.dart';
import 'package:mb_report/screens/menu_screens/school_announcement_menu_screen.dart';
import 'package:mb_report/screens/menu_screens/test_result_menu_screen.dart';
import 'package:mb_report/screens/signIn_pages/signIn.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // controller to keep track of which page we are on
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              onLastPage = (index == 5);
            });
          },

          children: [
            //classroom feedback screen
            ClassFeedbackMenu(),
            //classroom stories screen
            ClassStoriesMenu(),
            //lesson review screen
            LessonReviewMenu(),
            //exam preparation screen
            ExamPrepMenuScreen(),
            // Test Result Screen
            TestResultMenu(),
            // School Announcement
            SchoolAnnouncementMenuScreen(),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(5);
                  },
                  child: Text('skip'),
                ),
                //dot indicator
                SmoothPageIndicator(controller: _controller, count: 6),

                //next or done
                onLastPage ? GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInPage()));
                  },
                  child: Text('done'),
                ) : GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  child: Text('next'),
                ),
              ],
            )),
      ],
    ));
  }
}
