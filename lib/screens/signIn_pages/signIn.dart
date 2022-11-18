// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mb_report/ProgressHUD.dart';
import 'package:mb_report/models/login_model.dart';
import 'package:mb_report/screens/learning_features/feedbacks.dart';
import 'package:mb_report/service/api_service.dart';
import 'forget_password.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final globalScaffleKey = GlobalKey<ScaffoldState>();
  final globalFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hidePassword = true;
  bool isApiCallProcess = false;
  late LoginRequestModel loginRequestModel;

  @override
  void initState() {
    super.initState();
    loginRequestModel = LoginRequestModel(email: '', password: '');
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
      child: _uiSetUp(context),
    );
  }

  // showSnackBar(){
  //   var snackBar = const SnackBar(content: Text('login successfully'));
  //   // ignore: deprecated_member_use
  //   globalScaffleKey.currentState!.showSnackBar(snackBar);
  // }

  //TextEditingController emailController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();

  Widget _uiSetUp(BuildContext context) {
    return Scaffold(
        key: globalScaffleKey,
        appBar: AppBar(
          title: const Text(
            'GLI Mobile',
            style: TextStyle(fontSize: 16),
          ),
        ),
        body: Form(
            key: globalFormKey,
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
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (val) => loginRequestModel.email = val!,
                  validator: (val) =>
                      !val!.contains("@") ? "Email Id is not Valid" : null,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 0, color: Colors.teal),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 10, color: Colors.teal),
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
                  keyboardType: TextInputType.text,
                  onSaved: (val) => loginRequestModel.password = val!,
                  validator: (val) => val!.length < 6
                      ? "Password length should be greater than 6"
                      : null,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 0, color: Colors.teal),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      hintText: 'enter your password',
                      hintStyle: const TextStyle(fontSize: 12),
                      contentPadding: const EdgeInsets.all(16),
                      border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 10, color: Colors.teal),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        icon: Icon(hidePassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
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
                    if (validateAndSave()) {
                      print(loginRequestModel.toJson());
                    }

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetPassword()));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(120, 0, 120, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
                    //Login Button
                    child: const Text('Login'),

                    onPressed: () {
                      if (validateAndSave()) {
                        print(loginRequestModel.toJson());
                        setState(() {
                          isApiCallProcess = true;
                        });

                        APIService apiService = APIService();
                        apiService.login(loginRequestModel).then((value) {
                          setState(() {
                            isApiCallProcess = false;
                          });
                          if (value.accessJWT.isNotEmpty) {
                            print('login successfully');
                            // const snackBar = SnackBar(content: Text("Login Successful"));
                            // globalScaffleKey.currentState!.showSnackBar(snackBar);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LearnFeature()));
                          } else {
                            final snackBar = SnackBar(content: Text(value.message));
                            globalScaffleKey.currentState!.showSnackBar(snackBar);
                          }
                        });
                      }
                    },
                  ),
                )
              ],
            )));
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
