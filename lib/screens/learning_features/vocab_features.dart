import 'package:flutter/material.dart';

import '../user_info/user_profile.dart';
import 'card_sets.dart';
import 'class_activities_feature.dart';
import 'feedbacks.dart';


class VocabScreen extends StatefulWidget {
  const VocabScreen({Key? key}) : super(key: key);
  @override
  State<VocabScreen> createState() => _LearnFeatureState();
}

class _LearnFeatureState extends State<VocabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,

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
          'Card Sets',
          style: TextStyle(fontSize: 14,
          fontWeight: FontWeight.w500),
        ),
        titleTextStyle: const TextStyle(
            fontSize: 12,
            color: Colors.white
        ),
      ),
      body: Center(
          child: ListView(
            padding: const EdgeInsets.all(18),
            children: const [

              SampleCard(),
              SizedBox(height: 10,),
              BirthdayCard(),
              SizedBox(height: 10,),
              HalloweenCard()


            ],
          )
      ),
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
              label: 'vocab'),
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

// ignore: must_be_immutable
class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        borderOnForeground: true,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          //side: const BorderSide(color: Colors.white)
          ),
        margin: const EdgeInsets.all(2),
        // child: Image.asset('images/birthday.jpeg',
        // fit: BoxFit.fill)
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset('images/pet-birthday.jpeg', fit: BoxFit.fitWidth),
        ),

      ),
    );
  }
}

class HalloweenCard extends StatelessWidget {
  const HalloweenCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
          borderOnForeground: true,
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              //side: const BorderSide(color: Colors.white)
          ),
          margin: const EdgeInsets.all(2),
          // child: Image.asset('images/birthday.jpeg',
          // fit: BoxFit.fill)
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset('images/all_about_halloween.jpeg', fit: BoxFit.fitWidth),
          )
      ),
    );
  }
}

class SampleCard extends StatelessWidget {
  const SampleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.blueGrey.shade200,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // const ListTile(
            //   leading: Icon(Icons.album, size: 70),
            //   title: Text('Heart Shaker', style: TextStyle(color: Colors.white)),
            //   subtitle: Text('TWICE', style: TextStyle(color: Colors.white)),
            // ),
        ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset('images/birthday.jpeg', fit: BoxFit.fitWidth),
            ),
        const SizedBox(height: 10,),
        // Container(
        //     padding: const EdgeInsets.fromLTRB(500, 50, 0, 0),
        //     width: 200,
        //     height: 50,
        //     //margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        //     decoration: const BoxDecoration(
        //       color: Colors.blueGrey,
        //       borderRadius: BorderRadius.all(Radius.circular(50)),
        //       //border: Border.all(color: Colors.grey.shade50),
        //     ),
        //     child: const Text('all about birthday', style: TextStyle(color: Colors.red),)
        // ),

        ButtonBar(
        children: <Widget>[
          TextButton(
            child: const Text('view all', style: TextStyle(color: Colors.white)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CardSets()));
            },
          ),
        ],
      ),
          ],
        ),
      ),
    );
  }
}



