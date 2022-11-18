import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../learning_features/class_activities_feature.dart';
import '../learning_features/feedbacks.dart';
import '../learning_features/vocab_features.dart';
import '../signIn_pages/signIn.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.removeRoute(context, MaterialPageRoute(builder: (context)=> LearnFeature()));
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),)
        ],
        title: const Text('User Profile',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
      ),
      body: const UserProfileBody(),

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

        )
    );
  }
}

class UserProfileBody extends StatelessWidget {
  const UserProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          IconButton(
              alignment: Alignment.center,
              onPressed: (){if (kDebugMode) {
                print('icon profile pressed');
              }},
              icon: const Icon(
                Icons.account_circle_rounded,
                size: 50,
                color: Colors.teal,)),
          const SizedBox(height: 20,),
           TextButton(
              child: const Text('edit profile picture'),
              onPressed: (){if (kDebugMode) {
                print('edit pf text button tapped');
              }},
          ),
          const SizedBox(height: 20,),
          const Text('First Name',
            style: TextStyle(color: Colors.teal,
                fontSize: 14,
                fontWeight: FontWeight.w500),),

          // first name
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.teal),
                borderRadius:BorderRadius.circular(40.0),
              ),
              hintText: 'Chikako',
              hintStyle: const TextStyle(color: Colors.blueGrey, fontSize: 14, fontWeight: FontWeight.w400),
              contentPadding: const EdgeInsets.all(16),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 10, color: Colors.teal),
                borderRadius:BorderRadius.circular(50.0),),
            ),
          ),

          // last name
          const SizedBox(height: 10,),
          const Text('First Name',
            style: TextStyle(color: Colors.teal,
                fontSize: 14,
                fontWeight: FontWeight.w500),),
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.teal),
                borderRadius:BorderRadius.circular(40.0),
              ),
              hintText: 'Ishikawa',
              hintStyle: const TextStyle(color: Colors.blueGrey, fontSize: 14, fontWeight: FontWeight.w400),
              contentPadding: const EdgeInsets.all(16),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 10, color: Colors.teal),
                borderRadius:BorderRadius.circular(50.0),),
            ),
          ),


          // phone number
          const SizedBox(height: 10,),
          // const Text('Phone Number',
          //   style: TextStyle(color: Colors.teal,
          //       fontSize: 14,
          //       fontWeight: FontWeight.w500),),
          const SizedBox(height: 5,),
          // TextFormField(
          //   keyboardType: TextInputType.text,
          //   decoration:  InputDecoration(
          //     enabledBorder: OutlineInputBorder(
          //       borderSide: const BorderSide(width: 1, color: Colors.teal),
          //       borderRadius:BorderRadius.circular(40.0),
          //     ),
          //     hintText: '080-9380-6382',
          //     hintStyle: const TextStyle(color: Colors.teal, fontSize: 14, fontWeight: FontWeight.w500),
          //     contentPadding: const EdgeInsets.all(16),
          //     border: OutlineInputBorder(
          //       borderSide: const BorderSide(width: 10, color: Colors.teal),
          //       borderRadius:BorderRadius.circular(50.0),),
          //   ),
          // ),

          // date of birth
          const SizedBox(height: 10,),
          const Text('Date of Birth',
            style: TextStyle(color: Colors.teal,
                fontSize: 14,
                fontWeight: FontWeight.w500),),
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.teal),
                borderRadius:BorderRadius.circular(40.0),
              ),
              hintText: '2017-10-07',
              hintStyle: const TextStyle(color: Colors.teal, fontSize: 14, fontWeight: FontWeight.w500),
              contentPadding: const EdgeInsets.all(16),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 10, color: Colors.teal),
                borderRadius:BorderRadius.circular(50.0),),
            ),
          ),

          // email
          const SizedBox(height: 10,),
          const Text('Email',
            style: TextStyle(color: Colors.teal,
                fontSize: 14,
                fontWeight: FontWeight.w500),),
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration:  InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.teal),
                borderRadius:BorderRadius.circular(40.0),
              ),
              hintText: 'somtolaaa@gmail.com',
              hintStyle: const TextStyle(color: Colors.teal, fontSize: 14, fontWeight: FontWeight.w500),
              contentPadding: const EdgeInsets.all(16),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 10, color: Colors.teal),
                borderRadius:BorderRadius.circular(50.0),),
            ),
          ),

          // About me button
          const SizedBox(height: 40,),
          // Container(
          //     height: 50,
          //     padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
          //     child: ElevatedButton(
          //       style: ElevatedButton.styleFrom(
          //         primary: Colors.teal.shade100,
          //         onPrimary: Colors.teal,
          //
          //         shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(50.0),
          //               side: const BorderSide(color: Colors.teal),
          //         ),
          //       ),
          //       onPressed: () {
          //         //Navigator.push(context, MaterialPageRoute(builder: (context) => const LearnFeature()),);
          //       },
          //       child: const Text('Update Info',
          //         style: TextStyle(fontSize: 16, color: Colors.blueGrey),
          //       ),
          //     )),
          const SizedBox(height: 10,),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.teal,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: const BorderSide(color: Colors.teal),
                  ),
                ),
                child: const Text('ABOUT ME'),
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const LearnFeature()),);
                },
              )),
          const SizedBox(height: 10,),

          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        //side: const BorderSide(color: Colors.red),
                      ),
                  ),
                ),
                child: const Text('LOG OUT',),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()),);
                },
              )),

        ],

      )


    );
  }
}


