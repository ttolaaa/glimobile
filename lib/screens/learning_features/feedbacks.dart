// ignore_for_file: avoid_print
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../../models/login_model.dart';
import '../notifications/notification_screen.dart';
import '../signIn_pages/signIn.dart';
import '../user_info/user_profile.dart';
import 'IA_feedback.dart';
import 'class_activities_feature.dart';
import 'feedback_details.dart';
import 'vocab_features.dart';

class LearnFeature extends StatefulWidget{
  const LearnFeature({Key? key}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  State<LearnFeature> createState() => _LearnFeatureState();
}
class getUserAllFeedbackData{
  final String reviewFeedback, status, updatedAt, send, seen, createdAt, _id, name;
  final String receiver, teacher, classCodes, classroom, level, content;
  final String ratingS, speakings, ratingL, listenings, ratingW, writings, ratingR, readings;
  final String comments, __v;
  getUserAllFeedbackData(this.reviewFeedback, this.status, this.updatedAt, this.send, this.seen, this.createdAt, this._id, this.name, this.receiver, this.teacher, this.classCodes, this.classroom, this.level, this.content, this.ratingS, this.speakings, this.ratingL, this.listenings, this.ratingW, this.writings, this.ratingR, this.readings, this.comments, this.__v);

}

class _LearnFeatureState extends State<LearnFeature> {


  getUserFeedbackData() async{

    String url = 'http://139.59.253.84:3040/v2/feedback/student/lists';
    final res = await http.get(Uri.parse(url),
        headers: {
          HttpHeaders.authorizationHeader: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoic3R1ZGVudCIsImVtYWlsIjoiamFtZXNAamFtZXMuY29tIiwibmFtZSI6IkphbWVzIiwiaWF0IjoxNjY5ODA1MzYzLCJleHAiOjE2Njk5NzgxNjN9.IlLQV_nubSPFuNb1XVHfQU5HmeATbMhekdgSIfrWPow'
        });
    var jsonData = jsonDecode(res.body);
    print(jsonData.length);
    print(jsonData[1]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 5.0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationPage()));
              },
              icon: const Icon(Icons.notifications_active)),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UserInformation()));
          },
          icon: const Icon(Icons.account_circle_rounded),
        ),
        leadingWidth: 100,
        title: const Text(
          'Hello, \nChikako',
        ),
        titleTextStyle: const TextStyle(fontSize: 12, color: Colors.white),
      ),
      body: Text('Body'),


      // body: Center(
      //     child: ListView(
      //   padding: const EdgeInsets.all(20),
      //   children: <Widget>[
      //     //const SizedBox(height: 30,),
      //     Container(
      //       alignment: Alignment.center,
      //       child: const Text(
      //         'feedback',
      //         style: TextStyle(
      //             color: Colors.teal,
      //             fontWeight: FontWeight.w500,
      //             fontSize: 16),
      //       ),
      //     ),
      //
      //
      //
      //     // const SizedBox(
      //     //   height: 30,
      //     // ),
      //     //
      //
      //
      //     //sample card class
      //     //ElevatedCardExample(),
      //     ViewFeedbackCard(),
      //     ElevatedCardExample(),
      //     //Image.asset('images/flashcard logo.png'),
      //     TextButton(
      //         onPressed: () {
      //           Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (context) => const SignInPage()));
      //         },
      //         child: const Text('Return'))
      //   ],
      // )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LearnFeature()));
          }
          if (value == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const VocabScreen()));
          }
          if (value == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ClassActivities()));
          }
          if (value == 3) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UserInformation()));
          }
        },
        backgroundColor: Colors.teal,
        unselectedItemColor: Colors.teal.shade200,
        selectedItemColor: Colors.teal,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined), label: 'feedback'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'learn'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_business), label: 'classes'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'more',
          ),
        ],
      ),
    );
  }
}

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({Key? key, required this.reviewFeedback, required this.status, required this.updatedAt, required this.send, required this.seen, required this.createdAt, required this.name, required this.receiver, required this.teacher, required this.classCodes, required this.classroom, required this.level, required this.content, required this.ratingS, required this.speakings, required this.ratingL, required this.listenings, required this.ratingW, required this.writings, required this.ratingR, required this.readings, required this.comments}) : super(key: key);
  final String reviewFeedback, status, updatedAt, send, seen, createdAt, name;
  final String receiver, teacher, classCodes, classroom, level, content;
  final String ratingS, speakings, ratingL, listenings, ratingW, writings, ratingR, readings;
  final String comments;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.white, //<-- SEE HERE
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(40),
        child: const Text(
          'Elevated Card',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
// ignore: must_be_immutable
class ViewFeedbackCard extends StatelessWidget {
  ViewFeedbackCard({super.key});

  List<String> termCode = [
    'G1T1W1U1W1C1',
    'G1T1W1U1W1C2',
    'G1T1W1U1W2C1',
    'G1T1W1U1W2C2'
  ];
  List<String> classDate = [
    '2022-04-04',
    '2022-04-07',
    '2022-04-11',
    '2022-04-14',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Tapped Me!!');
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FeedbackDetails()));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.white, //<-- SEE HERE
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: Colors.white,
        borderOnForeground: true,
        elevation: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text('Term Code : ${classDate}',
                  style: const TextStyle(color: Colors.teal, fontSize: 12)),
              subtitle: Text(
                'Date: ${classDate[0]} ',
                style: const TextStyle(color: Colors.teal, fontSize: 12),
              ),
            ),
            // mainAxisAlignment: MainAxisAlignment.end
            // Icon(Icons.account_circle_rounded, color: Colors.teal,),
          ],
        ),
      ),
    );
  }
}
// ignore: must_be_immutable
class ElevatedCardExample extends StatelessWidget {
  ElevatedCardExample({super.key});

  List<String> termCode = [
    'G1T1W1U1W1C1',
    'G1T1W1U1W1C2',
    'G1T1W1U1W2C1',
    'G1T1W1U1W2C2'
  ];
  List<String> classDate = [
    '2022-04-04',
    '2022-04-07',
    '2022-04-11',
    '2022-04-14',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

        onTap: () {
          print('Tap Me');
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const IAFeedbackDetails()));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.white, //<-- SEE HERE
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          color: Colors.white,
          borderOnForeground: true,
          elevation: 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text('Term Code : ${termCode[0]}',
                    style: const TextStyle(color: Colors.teal, fontSize: 12)),
                subtitle: Text(
                  'Date: ${classDate[0]} ',
                  style: const TextStyle(color: Colors.teal, fontSize: 12),
                ),
              ),
              // mainAxisAlignment: MainAxisAlignment.end
              // Icon(Icons.account_circle_rounded, color: Colors.teal,),
            ],
          ),
        ));
  }
}

class FeedbackCard1 extends StatelessWidget {
  const FeedbackCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      child: Text('Click Me'),
      // shape: RoundedRectangleBorder(
      //   side: const BorderSide(
      //     color: Colors.white, //<-- SEE HERE
      //   ),
      //   borderRadius: BorderRadius.circular(12.0),
      // ),
      // child: Container(
      //   padding: const EdgeInsets.all(40),
      //   child: const Text(
      //     'Elevated Card',
      //     textAlign: TextAlign.center,
      //     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      //   ),
      // ),

    );
  }
}




