
import 'package:college_app/components/constants.dart';
import 'package:college_app/ui/dashboard1.dart';
import 'package:college_app/ui/firstPage.dart';
import 'package:college_app/ui/loginPage.dart';
import 'package:college_app/ui/notes.dart';
import 'package:college_app/ui/profilePage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import '../ui/search.dart';

class NavigationBarBottom extends StatefulWidget {
  const NavigationBarBottom({super.key});

  @override
  State<NavigationBarBottom> createState() => _NavigationBarBottomState();
}

class _NavigationBarBottomState extends State<NavigationBarBottom> {
  int index = 0;
  final items = <Widget>[
    Icon(CupertinoIcons.home) ,
    Icon(Icons.menu_book_sharp) ,
    Icon(CupertinoIcons.search) ,
    Icon(FontAwesomeIcons.user)
  ];

  final screens = [
    DashboardOne(),
    Notes(),
    Search(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
          builder: (context) {
            return screens[index];
          },
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Constants.primaryColor)
        ),
        child: CurvedNavigationBar(
          color: Constants.primaryColor.withOpacity(0.7),
            index: index,
            items: items,
            height: 74,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            animationCurve: Curves.fastLinearToSlowEaseIn,
            onTap: (newindex) {
              setState(() {
                if(newindex == 2){
                  Navigator.push(context, PageTransition(child: Search(), type: PageTransitionType.fade));
                }else if(newindex == 1){
                  Navigator.push(context, PageTransition(child: Notes(), type: PageTransitionType.fade));
                }
                else{
                  this.index = newindex;
                }
              });
            }),
      ),
    );
  }
}
