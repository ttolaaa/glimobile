import 'package:flutter/material.dart';

class CardSets extends StatelessWidget {
  const CardSets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrasal Verbs',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: const [
            CardSample(),
            Card1(),
            Card2(),
            Card3(),
            CardSample(),
            Card1(),
            Card2(),
            Card3(),
            Card5(),
            Card6()
          ],
        ),
      ),

    );
  }
}


class CardSample extends StatelessWidget {
  const CardSample({super.key});

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
        children: const <Widget>[
          ListTile(
            title: Text('birthday',
                style: TextStyle(color: Colors.teal, fontSize: 12)),
            subtitle: Text('誕生日',
              style: TextStyle(color: Colors.blueGrey, fontSize: 12),
            ),
          ),
          // mainAxisAlignment: MainAxisAlignment.end
          // Icon(Icons.account_circle_rounded, color: Colors.teal,),

        ],


      ),

    );
  }
}
class Card1 extends StatelessWidget {
  const Card1({super.key});

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
        children: const <Widget>[
          ListTile(
            title: Text('birth',
                style: TextStyle(color: Colors.teal, fontSize: 12)),
            subtitle: Text('誕生',
              style: TextStyle(color: Colors.blueGrey, fontSize: 12),
            ),
          ),
          // mainAxisAlignment: MainAxisAlignment.end
          // Icon(Icons.account_circle_rounded, color: Colors.teal,),

        ],


      ),

    );
  }
}
class Card2 extends StatelessWidget {
  const Card2({super.key});

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
        children: const <Widget>[
          ListTile(
            title: Text('day',
                style: TextStyle(color: Colors.teal, fontSize: 12)),
            subtitle: Text('日',
              style: TextStyle(color: Colors.blueGrey, fontSize: 12),
            ),
          ),
          // mainAxisAlignment: MainAxisAlignment.end
          // Icon(Icons.account_circle_rounded, color: Colors.teal,),

        ],


      ),

    );
  }
}
class Card3 extends StatelessWidget {
  const Card3({super.key});

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
        children: const <Widget>[
          ListTile(
            title: Text('gift',
                style: TextStyle(color: Colors.teal, fontSize: 12)),
            subtitle: Text('贈り物',
              style: TextStyle(color: Colors.blueGrey, fontSize: 12),
            ),
          ),
          // mainAxisAlignment: MainAxisAlignment.end
          // Icon(Icons.account_circle_rounded, color: Colors.teal,),

        ],


      ),

    );
  }
}
class Card4 extends StatelessWidget {
  const Card4({super.key});

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
        children: const <Widget>[
          ListTile(
            title: Text('gift',
                style: TextStyle(color: Colors.teal, fontSize: 12)),
            subtitle: Text('贈り物',
              style: TextStyle(color: Colors.blueGrey, fontSize: 12),
            ),
          ),
          // mainAxisAlignment: MainAxisAlignment.end
          // Icon(Icons.account_circle_rounded, color: Colors.teal,),

        ],


      ),

    );
  }
}
class Card5 extends StatelessWidget {
  const Card5({super.key});

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
        children: const <Widget>[
          ListTile(
            title: Text('gift',
                style: TextStyle(color: Colors.teal, fontSize: 12)),
            subtitle: Text('贈り物',
              style: TextStyle(color: Colors.blueGrey, fontSize: 12),
            ),
          ),
          // mainAxisAlignment: MainAxisAlignment.end
          // Icon(Icons.account_circle_rounded, color: Colors.teal,),

        ],


      ),

    );
  }
}
class Card6 extends StatelessWidget {
  const Card6({super.key});

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
        children: const <Widget>[
          ListTile(
            title: Text('gift',
                style: TextStyle(color: Colors.teal, fontSize: 12)),
            subtitle: Text('贈り物',
              style: TextStyle(color: Colors.blueGrey, fontSize: 12),
            ),
          ),
          // mainAxisAlignment: MainAxisAlignment.end
          // Icon(Icons.account_circle_rounded, color: Colors.teal,),

        ],


      ),

    );
  }
}