import 'package:college_app/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sidebarx/sidebarx.dart';

import '../ui/menu.dart';
import '../ui/search.dart';
import '../ui/tools.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  get controller => null;

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int selectedIndex = 1; // Track the selected index
  @override
  Widget build(BuildContext context) {
    final List<SidebarXItem> sidebarItems = [
      SidebarXItem(
        icon: FontAwesomeIcons.bars,
        onTap: (index) {
          setState(() {
            selectedIndex = index; // Update the selected index
          });
          Navigator.push(
            context,
            PageTransition(child: Menu(), type: PageTransitionType.fade),
          );
        },
      ),
      SidebarXItem(
        icon: CupertinoIcons.search,
        onTap: (index) {
          setState(() {
            index = 1;
            selectedIndex = index; // Update the selected index
          });
          Navigator.push(
            context,
            PageTransition(child: Search(), type: PageTransitionType.fade),
          );
        },
      ),
      SidebarXItem(
        icon: FontAwesomeIcons.computer,
        onTap: (index) {
          setState(() {
            selectedIndex = index; // Update the selected index
          });
          Navigator.push(
            context,
            PageTransition(child: Tools(), type: PageTransitionType.fade),
          );
        },
      ),
    ];
    return Align(
      alignment: Alignment.topLeft,
      child: SidebarX(
          controller: SidebarXController(selectedIndex: selectedIndex,),
          theme: SidebarXTheme(
            iconTheme: IconThemeData(color: Colors.black,
            ),
              padding: EdgeInsets.only(top: 10),
              itemMargin: EdgeInsets.symmetric(vertical: 10),
              selectedIconTheme: IconThemeData(color: Colors.white),
              height: 712.8,
              // margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Constants.primaryColor.withOpacity(0.6))),
          showToggleButton: false,
          items: sidebarItems,
      ),
    );
  }
}
