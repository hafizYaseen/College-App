import 'package:college_app/components/button1.dart';
import 'package:college_app/components/constants.dart';
import 'package:college_app/ui/loginPage.dart';
import 'package:college_app/ui/signUp.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
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
                      fontSize: 32,
                      color: Constants.primaryColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'LET ACCESS ALL WORK FROM HERE',
                  style: TextStyle(
                      fontFamily: Constants.mediumFont,
                      fontSize: 10,
                      color: Color(0XFF000000)),
                ),
              ),
              SizedBox(height: 30,),
              ButtonOne(
                  text1: 'Login',
                  color: Constants.primaryColor,
                  fontSize: 20,
                  backColor: Colors.transparent,
                  borderRadius: 75,
                  borderColor: Constants.primaryColor,
                  onTap: (){
                  Navigator.push(context, PageTransition(child: LoginPage(), type: PageTransitionType.fade));
                },
                  w: 112.5,
                  h: 37.5,),
              SizedBox(height: 30,),
              ButtonOne(
                  text1: 'Sign Up',
                  color: Constants.primaryColor,
                  fontSize: 20,
                  backColor: Colors.transparent,
                  borderRadius: 75,
                  borderColor: Constants.primaryColor,
                  onTap: (){
                  Navigator.push(context, PageTransition(child: SignUp(), type: PageTransitionType.fade));
                },
                  w: 112.5,
                  h: 37.5,),
              SizedBox(height: 63,),
              Image(
                image: AssetImage('assets/images/image 2.png'),
                height: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
