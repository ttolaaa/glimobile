import 'package:flutter/material.dart';
import 'package:mb_report/onboarding_screen.dart';

import 'screens/signIn_pages/signIn.dart';
import 'screens/menu_screens/class_stories_intro.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String _title = 'GLI Mobile App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(title: const Text(_title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),),
        // body: const HomePageBody(),
        body: OnBoardingScreen(),
      ),
    );
  }
}

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);
  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
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
              'images/classfeedbacks.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 50,),
            Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                alignment: Alignment.center,
                child: const Text(
                  'Classroom Feedback',
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
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                textStyle: const TextStyle(fontSize: 12),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ClassStoriesMenu()),);
              },
              child: const Text('Next', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,

              ),),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
                textStyle: const TextStyle(fontSize: 12),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()),);
              },
              child: const Text('Skip', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 14,

              ),),
            ),
          ],
        ),
      ),
    );

    // return Container(
    //     decoration: new BoxDecoration(
    //     image: new DecorationImage(
    //     image: new AssetImage('images/App Material Design.png'),
    // fit: BoxFit.cover)),
    //   padding: const EdgeInsets.all(10),
    //   child: ListView(
    //     children: [
    //       const SizedBox(height: 100,),
    //       Container(
    //         alignment: Alignment.center,
    //         child: const Text(
    //           'GLI Mobile App',
    //           style: TextStyle(
    //             color: Colors.teal,
    //             fontWeight: FontWeight.w500,
    //             fontSize: 20,
    //           ),
    //         ),
    //       ),
    //       const SizedBox(height: 50,),
    //       //Image.asset('images/App Material Design.png',width: 100,height: 100,),
    //
    //
    //       // Image.asset('images/flashcard logo.png',width: 100,height: 100,),
    //       const SizedBox(height: 50,),
    //       Container(
    //           alignment: Alignment.center,
    //           child: const Text(
    //               'GLIは「Global skill」と「受験」の両方を叶えます！',
    //               style: TextStyle(
    //                 color: Colors.teal,
    //                 fontWeight: FontWeight.w500,
    //               )
    //           )
    //       ),
    //       const SizedBox(height: 80,),
    //       Container(
    //           height: 50,
    //           padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
    //           child: ElevatedButton(
    //             style: ButtonStyle(
    //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //                     RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(30.0),
    //                       //side: BorderSide(color: Colors.red)
    //                     )
    //                 )
    //             ),
    //             child: const Text('start'),
    //             onPressed: () {
    //               Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()),);
    //             },
    //
    //           )
    //       ),
    //     ],
    //   ),
    // );
  }
}
