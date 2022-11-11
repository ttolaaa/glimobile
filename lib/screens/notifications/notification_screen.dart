import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../learning_features/feedback_details.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.removeRoute(context, MaterialPageRoute(builder: (context)=> LearnFeature()));
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),)
        ],
        title: const Text('Notifications',
        textAlign: TextAlign.center,
        style: TextStyle( fontSize: 14, fontWeight: FontWeight.w500),),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: [
            NotificationCard()
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class NotificationCard extends StatelessWidget {
  NotificationCard({super.key});

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

        if (kDebugMode) {
          print('Tapped Me!!');
        }
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


