import 'package:flutter/material.dart';
import '../signIn_pages/signIn.dart';
import '../user_info/user_profile.dart';
import 'feedbacks.dart';
import 'vocab_features.dart';

class ClassActivities extends StatelessWidget {
  const ClassActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 5.0,
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.notifications_active)),
        ],
        leading: IconButton(
          onPressed: (){},
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
                  'class activities',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              const SizedBox(height: 100,),
              //Image.asset('images/flashcard logo.png'),
              const SizedBox(height: 100,),
              const SizedBox(height: 100,),
              const SizedBox(height: 100,),
              const SizedBox(height: 100,),
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
            icon: Icon(Icons.bubble_chart_outlined),
            label: 'more',
          ),
        ],

      ),


    );
  }
}
