import 'package:college_app/components/bottomNavigationBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../components/button1.dart';
import '../components/constants.dart';
import '../components/formFieldText.dart';
import '../utils/utils.dart';
import 'dashboard1.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool loading = false;

  FirebaseAuth auth = FirebaseAuth.instance;

  void signUp(){
    setState(() {
      loading = true;
    });
    auth.createUserWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString()).then((value){
      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace){
      Utils().toastMessage(error.toString());
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
                        onTap: (){
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
                Form(
                    key: formKey,
                    child: Column(
                  children: [
                    FormFieldText(
                      h: 70,
                      w: 280,
                      textInputType: TextInputType.text,
                      hintText: 'Full Name',
                      borderColor: Colors.black,
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
                      validatorText: 'Enter Name',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FormFieldText(
                      controller: emailController,
                      h: 70,
                      w: 280,
                      textInputType: TextInputType.emailAddress,
                      hintText: 'Email Address',
                      borderColor: Colors.black,
                      fillColor: Colors.indigo.shade50,
                      length: 20,
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
                      hintText: 'Create Password',
                      borderColor: Colors.black,
                      fillColor: Colors.indigo.shade50,
                      length: 200,
                      enabledBorderColor: Constants.primaryColor,
                      errorBorderColor: Colors.red,
                      cursorColor: Constants.primaryColor,
                      hintTextColor: Colors.black,
                      obscureText: true,
                      enabledBorderRadius: BorderRadius.circular(100),
                      focusedBorderRadius: BorderRadius.circular(100),
                      errorBorderRadius: BorderRadius.circular(100),
                      validatorText: 'Enter Password',
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FormFieldText(
                      h: 70,
                      w: 280,
                      textInputType: TextInputType.visiblePassword,
                      hintText: 'Re Enter Password',
                      borderColor: Colors.black,
                      fillColor: Colors.indigo.shade50,
                      length: 20,
                      enabledBorderColor: Constants.primaryColor,
                      errorBorderColor: Colors.red,
                      cursorColor: Constants.primaryColor,
                      hintTextColor: Colors.black,
                      obscureText: true,
                      enabledBorderRadius: BorderRadius.circular(100),
                      focusedBorderRadius: BorderRadius.circular(100),
                      errorBorderRadius: BorderRadius.circular(100),
                      validatorText: 'Re Enter Password',
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                )),

                SizedBox(
                  height: 30,
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
                    if(formKey.currentState!.validate()){
                      signUp();
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         child: NavigationBarBottom(),
                      //         type: PageTransitionType.fade));
                    }

                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage('assets/images/image 4.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
