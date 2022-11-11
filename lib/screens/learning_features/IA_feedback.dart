import 'package:flutter/material.dart';

class IAFeedbackDetails extends StatelessWidget {
  const IAFeedbackDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'FLL feedbacks',
          style: TextStyle(fontSize: 14),),
      ),
      body: BodyFeedback(),
      backgroundColor: Colors.teal.shade50,

    );
  }
}
// ignore: must_be_immutable
class BodyFeedback extends StatelessWidget {
  BodyFeedback({Key? key}) : super(key: key);
  List<String> studentName = [
    'Chikako Ishikawa',
    'Tsukimune Narita',
    'Yuta Sekiya'
  ];
  List<String> lessonID =[
    '2022/10/13',
    '2022/10/14'
  ];
  List<String> termCode = [
    'G1T2U12W23C2',
    'G1T2U12W23C2'
  ];
  List<String> dateCreated = [
    'Thursday October 13, 2022 8:00 PM',
    'Friday October 14, 2022 8:00 PM'
  ];

  //String overallClassFeedback = 'We had these following activities \n Greeting and Homework Check\nMusic\n①ABCs Song: https://youtu.be/ezmsrB59mj8\n②Phonic Song: https://youtu.be/Ap-XnC63608\nQuiz – ABCs, Spelling, Vowels, etc.\nNew Words (Body, Head, Shoulder, Knees, Toes, Ears, Eyes, Mouth, Lips, Nose)\nSongs: Head Shoulder Knees and Toes | Cocomenlon https://youtu.be/QA48wTGbU7A\nHomework:\n① Write the alphabet a-z and A-Z 1x\n② Write the vowels 1x: a, e, i, o ,u\n③ Write new words 2x: body, head, shoulders, knees, toes, eyes, mouth, lips, nose ears.\n④ Practice sing Head Shoulder Knee and Toes song.';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: <Widget>[

            Container(
                alignment: Alignment.center,
                child: Text("${studentName[2]}'s feedback ",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.teal
                  ),)
            ),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Lesson ID: ${lessonID[0]}.",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.teal.shade500
                ),),
            ),
            const SizedBox(height: 5,),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Term Code: ${termCode[0]}",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.teal.shade500
                ),),
            ),
            const SizedBox(height: 5,),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Created on: ${dateCreated[0]}",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.teal.shade500
                ),),
            ),

            const SizedBox(height: 30,),

            //Review Content
            Container(
              alignment: Alignment.topLeft,
              child: Text("Review Content",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal.shade500
                ),),
            ),
            const SizedBox(height: 5,),
            Card(
              shape: RoundedRectangleBorder(
                side:  const BorderSide(
                  color: Colors.white, //<-- SEE HERE
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              color: Colors.white,
              borderOnForeground: true,
              elevation: 2,
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  ListTile(
                    title: Text('We had the following activities in the class today.'
                        'Quiz, Q & A, ABC, Vocabulary, Tongue Twister, and Song.',
                        style: TextStyle(color: Colors.teal, fontSize: 12, fontWeight: FontWeight.w300)),
                  ),
                  // mainAxisAlignment: MainAxisAlignment.end
                  // Icon(Icons.account_circle_rounded, color: Colors.teal,),

                ],


              ),

            ),

            //Overall Class Feedback
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Overall Class",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal.shade500
                ),),
            ),
            const SizedBox(height: 5,),
            Card(
              shape: RoundedRectangleBorder(
                side:  const BorderSide(
                  color: Colors.white, //<-- SEE HERE
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              color: Colors.white,
              borderOnForeground: true,
              elevation: 2,
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  ListTile(
                    title: Text('\nWe had these following activities \n Greeting and Homework Check\nMusic\n①ABCs Song: https://youtu.be/ezmsrB59mj8\n②Phonic Song: https://youtu.be/Ap-XnC63608\nQuiz – ABCs, Spelling, Vowels, etc.\nNew Words (Body, Head, Shoulder, Knees, Toes, Ears, Eyes, Mouth, Lips, Nose)\nSongs: Head Shoulder Knees and Toes | Cocomenlon https://youtu.be/QA48wTGbU7A\nHomework:\n① Write the alphabet a-z and A-Z 1x\n② Write the vowels 1x: a, e, i, o ,u\n③ Write new words 2x: body, head, shoulders, knees, toes, eyes, mouth, lips, nose ears.\n④ Practice sing Head Shoulder Knee and Toes song.\n',
                        style: TextStyle(color: Colors.teal, fontSize: 12, fontWeight: FontWeight.w300)),
                  ),
                  // mainAxisAlignment: MainAxisAlignment.end
                  // Icon(Icons.account_circle_rounded, color: Colors.teal,),

                ],


              ),

            ),

            //Review Note
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Review Note",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal.shade500
                ),),
            ),
            const SizedBox(height: 5,),
            Card(
              shape: RoundedRectangleBorder(
                side:  const BorderSide(
                  color: Colors.white, //<-- SEE HERE
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              color: Colors.white,
              borderOnForeground: true,
              elevation: 2,
              child: Column(
                //mainAxisSize: MainAxisSize.min,
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  ListTile(
                    title: Text('\nContinue to review the student’s with a) Spelling of Number b) new words related to body system. You may use previous Q&A for this.\n',
                        style: TextStyle(color: Colors.teal, fontSize: 12, fontWeight: FontWeight.w300)),
                  ),
                  // mainAxisAlignment: MainAxisAlignment.end
                  // Icon(Icons.account_circle_rounded, color: Colors.teal,),

                ],


              ),

            ),

            //Next Lesson Code
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.topLeft,
              child: Text("Next Lesson: ${termCode[1]}",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal.shade500
                ),),
            ),
            const SizedBox(height: 100,),








          ],
        )
    );
  }
}
