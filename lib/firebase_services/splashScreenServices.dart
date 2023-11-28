

import 'dart:async';

import 'package:college_app/components/bottomNavigationBar.dart';
import 'package:college_app/ui/dashboard1.dart';
import 'package:college_app/ui/fireStore/fireStoreListScreen.dart';
import 'package:college_app/ui/firstPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreenServices {
  void isLogin(BuildContext context){
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if(user != null){
      Timer(const Duration(seconds: 3),
          () => Navigator.push(context, PageTransition(child: FireStoreScreen(), type: PageTransitionType.fade))
      );
    }else{
      Timer(const Duration(seconds: 5),
          () => Navigator.push(context, PageTransition(child: FirstPage(), type: PageTransitionType.fade))
      );
    }
  }
}