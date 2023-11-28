import 'package:college_app/ui/firstPage.dart';
import 'package:college_app/ui/splashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyA3vMszqZ8oj6gk1P74vCbVMoqBy0KcKbQ',
          appId: '1:149439896082:android:76f8fa274043d26fc916cb',
          messagingSenderId: '149439896082',
          projectId: 'golden-tempest-385005',
          databaseURL: 'https://golden-tempest-385005-default-rtdb.asia-southeast1.firebasedatabase.app',));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
