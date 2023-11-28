import 'package:college_app/components/button1.dart';
import 'package:college_app/components/constants.dart';
import 'package:college_app/firebase_services/splashScreenServices.dart';
import 'package:college_app/ui/loginPage.dart';
import 'package:college_app/ui/signUp.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  SplashScreenServices SplashScreen = SplashScreenServices();

  @override
  void initState() {
    super.initState();
    SplashScreen.isLogin(context);

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3), // Adjust the duration as needed
    );

    // Create a linear animation
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller when done
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: FadeTransition(
                  opacity: _animation,
                  child: Image(
                    image: AssetImage('assets/images/images 1.png'),
                    width: 300,
                    height: 250,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: FadeTransition(
                opacity: _animation,
                child: Text(
                  'Welcome to DMI',
                  style: TextStyle(
                      fontFamily: Constants.boldFont,
                      fontSize: 36,
                      color: Constants.primaryColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'LET ACCESS ALL WORK FROM HERE',
                style: TextStyle(
                    fontFamily: Constants.mediumFont,
                    fontSize: 13,
                    color: Color(0XFF000000)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
