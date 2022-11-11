import 'package:flutter/material.dart';


import 'reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

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
        // forget password
        title: const Text(
          //'Forget Password',
          'パスワードを忘れた',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),

      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: <Widget>[
            const SizedBox(height: 50,),
            // forget password big text
            const Text(
              //'Forget\nPassword?',
              'パスワード \nを忘れた ?',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.blueGrey),),
            const SizedBox(height: 40,),

            const Text(
              'アカウントに関連付けられている電子メール アドレスを入力します。',
              //'enter email address associated with your account.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.teal, ),
            ),
            const SizedBox(height: 40,),
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
                  prefixIcon: const Icon( Icons.email, color: Colors.teal),
                  hintText: 'メールアドレスを入力して',
                  hintStyle: const TextStyle(fontSize: 12)
              ),

            ),
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
                  child: const Text('パスワードを再設定する',
                    //'RESET PASSWORD',
                  style: TextStyle(fontSize: 12),),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ResetPassword()),);
                  },
                ))


          ],
        ),
      ),

    );
  }
}
