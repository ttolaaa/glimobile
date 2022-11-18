// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../notifications/notification_screen.dart';
import '../signIn_pages/signIn.dart';
import '../user_info/user_profile.dart';
import 'IA_feedback.dart';
import 'class_activities_feature.dart';
import 'feedback_details.dart';
import 'vocab_features.dart';


class LearnFeature extends StatefulWidget {
  const LearnFeature({Key? key}) : super(key: key);
  @override
  State<LearnFeature> createState() => _LearnFeatureState();
}

class _LearnFeatureState extends State<LearnFeature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 5.0,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotificationPage()));
              },
              icon: const Icon(Icons.notifications_active)),
        ],
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserInformation()));
          },
          icon: const Icon(Icons.account_circle_rounded),
        ),
        leadingWidth: 100,
        title: const Text(
          'Hello, \nChikako',
        ),
        titleTextStyle: const TextStyle(
          fontSize: 12,
          color: Colors.white
        ),
      ),
      body: Center(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              //const SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'feedback',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              //sample card class
              //ElevatedCardExample(),
              ViewFeedbackCard(),
              ElevatedCardExample(),
              // Card2(),
              // Card3(),
              // Card4(),
              // ElevatedCardExample(),
              // Card2(),
              // Card3(),
              // Card4(),
              // ElevatedCardExample(),
              // Card2(),
              // Card3(),
              // Card4(),
              // ElevatedCardExample(),
              // Card2(),
              // Card3(),
              // Card4(),




              //Image.asset('images/flashcard logo.png'),
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInPage() ));
                  },
                  child: const Text('Return')
              )

            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0) Navigator.push(context, MaterialPageRoute(builder: (context)=> const LearnFeature()));
          if (value == 1) Navigator.push(context, MaterialPageRoute(builder: (context)=> const VocabScreen()));
          if (value == 2) Navigator.push(context, MaterialPageRoute(builder: (context)=> const ClassActivities()));
          if (value == 3) Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserInformation()));

        },
        
        backgroundColor: Colors.teal,
        unselectedItemColor: Colors.teal.shade200,
        selectedItemColor: Colors.teal,

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined),
              label: 'feedback'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'learn'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_business),
              label: 'classes'),
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
  const FeedbackCard({Key? key}) : super(key: key);

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
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400
          ),
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
      onTap: (){

        print('Tapped Me!!');
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const FeedbackDetails()));

        },

      child: Card(
        shape: RoundedRectangleBorder(
          side:  const BorderSide(
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
              subtitle: Text('Date: ${classDate[0]} ',
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
        onTap: (){

      print('Tapped Me!!');
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const IAFeedbackDetails()));

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
            subtitle: Text('Date: ${classDate[0]} ',
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
// ignore: must_be_immutable
class Card2 extends StatelessWidget {
  Card2({super.key});

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
    return Card(
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
            title: Text('Term Code : ${termCode[1]}',
                style: const TextStyle(color: Colors.teal, fontSize: 12)),
            subtitle: Text('Date: ${classDate[1]} ',
              style: const TextStyle(color: Colors.teal, fontSize: 12),
            ),
          ),
          // mainAxisAlignment: MainAxisAlignment.end
          // Icon(Icons.account_circle_rounded, color: Colors.teal,),

        ],


      ),

    );
  }
}
// ignore: must_be_immutable
class Card3 extends StatelessWidget {
  Card3({super.key});

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
    return Card(
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
            title: Text('Term Code : ${termCode[2]}',
                style: const TextStyle(color: Colors.teal, fontSize: 12)),
            subtitle: Text('Date: ${classDate[2]} ',
              style: const TextStyle(color: Colors.teal, fontSize: 12),
            ),
          ),
          // mainAxisAlignment: MainAxisAlignment.end
          // Icon(Icons.account_circle_rounded, color: Colors.teal,),

        ],


      ),

    );
  }
}
// ignore: must_be_immutable
class Card4 extends StatelessWidget {
  Card4({super.key});

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
    return Card(
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
            title: Text('Term Code : ${termCode[3]}',
                style: const TextStyle(color: Colors.teal, fontSize: 12)),
            subtitle: Text('Date: ${classDate[3]} ',
              style: const TextStyle(color: Colors.teal, fontSize: 12),
            ),
          ),
          // mainAxisAlignment: MainAxisAlignment.end
          // Icon(Icons.account_circle_rounded, color: Colors.teal,),

        ],


      ),

    );
  }
}



