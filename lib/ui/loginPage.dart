import 'package:college_app/components/bottomNavigationBar.dart';
import 'package:college_app/components/formFieldText.dart';
import 'package:college_app/ui/dashboard1.dart';
import 'package:college_app/ui/loginWithPhone.dart';
import 'package:college_app/utils/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import '../components/button1.dart';
import '../components/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  FirebaseAuth auth = FirebaseAuth.instance;

  void login() {
    setState(() {
      loading = true;
    });
    auth
        .signInWithEmailAndPassword(
      email: emailController.text.toString(),
      password: passwordController.text.toString(),
    )
        .then((value) {
      Utils().toastMessage('Login Successfully!');
      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace) {
      Utils().toastMessage('Login Failed!');
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_new))),
                Center(
                    child: Image(
                  image: AssetImage('assets/images/images 1.png'),
                  width: 118.5,
                  height: 106.5,
                )),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Welcome to DMI',
                    style: TextStyle(
                        fontFamily: Constants.boldFont,
                        fontSize: 24,
                        color: Constants.primaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'LET ACCESS ALL WORK FROM HERE',
                    style: TextStyle(
                        fontFamily: Constants.mediumFont,
                        fontSize: 7.5,
                        color: Color(0XFF000000)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Image(
                  image: AssetImage(
                    'assets/images/google 1.png',
                  ),
                )),
                SizedBox(
                  height: 50,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      FormFieldText(
                        controller: emailController,
                        h: 70,
                        w: 280,
                        textInputType: TextInputType.emailAddress,
                        hintText: 'Email Address',
                        borderColor: Colors.transparent,
                        fillColor: Colors.indigo.shade50,
                        length: 200,
                        enabledBorderColor: Constants.primaryColor,
                        errorBorderColor: Colors.red,
                        cursorColor: Constants.primaryColor,
                        hintTextColor: Colors.black,
                        obscureText: false,
                        enabledBorderRadius: BorderRadius.circular(100),
                        focusedBorderRadius: BorderRadius.circular(100),
                        errorBorderRadius: BorderRadius.circular(100),
                        validatorText: 'Enter Email',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FormFieldText(
                        controller: passwordController,
                        h: 70,
                        w: 280,
                        textInputType: TextInputType.visiblePassword,
                        hintText: 'Password',
                        borderColor: Colors.transparent,
                        fillColor: Colors.indigo.shade50,
                        length: 10,
                        enabledBorderColor: Constants.primaryColor,
                        errorBorderColor: Colors.red,
                        cursorColor: Constants.primaryColor,
                        hintTextColor: Colors.black,
                        obscureText: true,
                        enabledBorderRadius: BorderRadius.circular(100),
                        focusedBorderRadius: BorderRadius.circular(100),
                        errorBorderRadius: BorderRadius.circular(100),
                        maxLines: 1,
                        validatorText: 'Enter Password',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontFamily: Constants.lightFont,
                          color: Colors.black,
                          fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ButtonOne(
                  text1: 'Login',
                  color: Constants.primaryColor,
                  fontSize: 20,
                  backColor: Colors.transparent,
                  borderRadius: 75,
                  borderColor: Constants.primaryColor,
                  w: 112.5,
                  h: 37.5,
                  loading: loading,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      login();
                      Navigator.push(
                          context,
                          PageTransition(
                              child: NavigationBarBottom(),
                              type: PageTransitionType.fade));
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonOne(
                    text1: 'Login with Phone',
                    color: Colors.white,
                    firstColor: Constants.primaryColor,
                    secondColor: Constants.primaryColor,
                    fontSize: 20,
                    borderRadius: 75,
                    borderColor: Constants.primaryColor,
                    w: double.infinity,
                    h: 50,
                    onTap: (){
                      Navigator.push(context, PageTransition(child: LoginWithPhone(), type: PageTransitionType.fade));
                    }),
                Image(
                  image: AssetImage('assets/images/image 3.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
