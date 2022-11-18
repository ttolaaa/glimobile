import 'package:flutter/material.dart';

import 'screens/signIn_pages/signIn.dart';


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
        appBar: AppBar(title: const Text(_title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),),
        body: const HomePageBody(),
      ),
    );
  }
}

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);
  @override
  State<HomePageBody> createState() => _HomePageBodyState();

}

class _HomePageBodyState  extends State<HomePageBody>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          const SizedBox(height: 100,),
          Container(
            alignment: Alignment.center,
            child: const Text(
              'GLI Mobile App',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 50,),
          Image.asset('images/flashcard logo.png',width: 100,height: 100,),
          const SizedBox(height: 50,),
          Container(
              alignment: Alignment.center,
              child: const Text(
                  'GLIは「Global skill」と「受験」の両方を叶えます！',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.w500,
                  )
              )
          ),
          const SizedBox(height: 80,),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          //side: BorderSide(color: Colors.red)
                        )
                    )
                ),
                child: const Text('start'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()),);
                },

              )
          ),
        ],
      ),
    );
  }
}

