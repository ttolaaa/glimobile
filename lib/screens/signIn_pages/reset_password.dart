import 'package:flutter/material.dart';

import 'signIn.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

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
        title: const Text('Reset Password',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
      
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: <Widget>[
            const SizedBox(height: 40,),
            const Text('Reset \nPassword?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.blueGrey),
            ),
            const SizedBox(height: 40,),

            const Text('please enter one-time 6 PIN digits from your email',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.blueGrey, ),
            ),
            const SizedBox(height: 40,),
            const Text('please enter 6 PIN digits',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.teal, ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0, color: Colors.teal),
                    borderRadius:BorderRadius.circular(50.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.teal),
                    borderRadius:BorderRadius.circular(50.0),
                  ),
                  // border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.all(16),
                  //prefixIcon: const Icon( Icons.star_rate_rounded, color: Colors.grey),
                  hintText: '6 pin digits', ),

            ),
            const SizedBox(height: 15,),
            const Text('please enter your email',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.teal, ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 0, color: Colors.teal),
                  borderRadius:BorderRadius.circular(50.0),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.teal),
                  borderRadius:BorderRadius.circular(50.0),
                ),
                // border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.all(16),
                prefixIcon: const Icon( Icons.attach_email, color: Colors.grey),
                hintText: 'your email', ),

            ),

            const SizedBox(height: 15,),
            const Text('please enter your new password',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.teal, ),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 0, color: Colors.teal),
                  borderRadius:BorderRadius.circular(50.0),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.teal),
                  borderRadius:BorderRadius.circular(50.0),
                ),
                // border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.all(16),
                prefixIcon: const Icon( Icons.password, color: Colors.grey),
                hintText: 'new password', ),

            ),


            const SizedBox(height: 10,),


            const SizedBox(height: 40,),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            //side: BorderSide(color: Colors.red)
                          )
                      )
                  ),
                  child: const Text('UPDATE PASSWORD',
                    style: TextStyle(fontSize: 12),),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInPage()),);
                  },
                ))

          ],
        ),
      ),
    );
  }
}
