// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mb_report/screens/learning_features/feedbacks.dart';
// import '../learning_features/feedbacks.dart';
import 'forget_password.dart';
// import 'package:http/http.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final scaffleKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  late String email, password;
  showSnackBar(){
    var snackBar = const SnackBar(content: Text('login successfully'));
    // ignore: deprecated_member_use
    scaffleKey.currentState!.showSnackBar(snackBar);
  }

  //TextEditingController emailController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffleKey,
      appBar: AppBar(
        title: const Text(
          'GLI Mobile',
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Form(
          key: formKey,
          child: Column(
               // padding: const EdgeInsets.all(20),
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/flashcard logo.png',
                    width: 100,
                    height: 100,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Global Learner's Institute",
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        //'Login',
                        'ログインする',
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )),
                  const SizedBox(
                    height: 10,
                  ),

                  TextFormField(
                    //controller: emailController,
                    validator: (val) =>
                    !val!.contains("@") ? "Email Id is not Valid" : null,
                    onSaved: (val) => email = val!,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 0, color: Colors.teal),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 10, color: Colors.teal),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        // border: const OutlineInputBorder(),
                        contentPadding: const EdgeInsets.all(16),
                        prefixIcon: const Icon(Icons.email, color: Colors.grey),
                        hintText: 'enter your email',
                        hintStyle: const TextStyle(fontSize: 12)),
                  ),
                  const SizedBox(height: 10),

                  TextFormField(
                    //controller: passwordController,
                    validator: (val) => val!.length < 6
                        ? "Password length should be greater than 6"
                        : null,
                    // validator: (val){
                    //   if(val!.isEmpty){
                    //     print('password cannot be empty!');
                    //   }else if(val!.length < 6){
                    //     print('password cannot be less than 6!!');
                    //   }else{
                    //     return null;
                    //   }
                    // },
                    onSaved: (val) => password = val!,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 0, color: Colors.teal),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintText: 'enter your password',
                      hintStyle: const TextStyle(fontSize: 12),
                      contentPadding: const EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 10, color: Colors.teal),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    child: const Text(
                      //'パスワードを忘れた',
                      'Forget Password',
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgetPassword()));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                 Padding(padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
                 child: ElevatedButton(
                   style: ButtonStyle(
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                           RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30.0),
                           ))),
                   //Login Button
                   child: const Text('Login'),
                   onPressed: () {

                     if (formKey.currentState!.validate()) {
                       formKey.currentState!.save();
                       showSnackBar();
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> const LearnFeature()));

                     }
                   },
                 ),)
                ],
              ))
    );
  }

}

