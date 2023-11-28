import 'package:college_app/components/drawer.dart';
import 'package:college_app/ui/notes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import '../components/bottomNavigationBar.dart';
import '../components/constants.dart';
import '../components/formFieldText.dart';

class Tools extends StatefulWidget {
  const Tools({super.key});

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Constants.primaryColor, width: 5))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Constants.primaryColor, width: 2),
                                borderRadius: BorderRadius.circular(100)),
                            child: CircleAvatar(
                              minRadius: 30,
                              child: Text(
                                'YE',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontFamily: Constants.boldFont,
                                    color: Constants.primaryColor),
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Yaseen Ejaz',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: Constants.boldFont,
                                  color: Constants.primaryColor),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'yaseen.ejaz10@gmail.com',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: Constants.semiBoldFont,
                                      color: Constants.primaryColor),
                                ),
                                Icon(FontAwesomeIcons.angleDown,
                                    color: Constants.primaryColor),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [MyDrawer()],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 282.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'TOOLS',
                            style: TextStyle(
                                fontSize: 22, fontFamily: Constants.boldFont),
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.pushReplacement(context, PageTransition(child: NavigationBarBottom(), type: PageTransitionType.fade));
                                },
                                child: Icon(
                                  Icons.close,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FormFieldText(
                      h: 50,
                      w: 280,
                      textInputType: TextInputType.text,
                      hintText: 'Search',
                      length: 50,
                      borderColor: Constants.primaryColor,
                      fillColor: Colors.transparent,
                      enabledBorderColor: Colors.black,
                      errorBorderColor: Colors.red,
                      cursorColor: Constants.primaryColor,
                      hintTextColor: Constants.primaryColor,
                      obscureText: false,
                      enabledBorderRadius: BorderRadius.circular(20),
                      focusedBorderRadius: BorderRadius.circular(20),
                      errorBorderRadius: BorderRadius.circular(20),
                      suffixIcon: CupertinoIcons.search,
                      iconColor: Constants.primaryColor,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: Notes(), type: PageTransitionType.fade));
                      },
                      child: Container(
                        width: 280,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(35),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0XFFD9D9D9)),
                                  child: Icon(
                                    FontAwesomeIcons.noteSticky,
                                    size: 40,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'NOTES',
                                  style: TextStyle(
                                      fontFamily: Constants.semiBoldFont,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(35),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0XFFD9D9D9)),
                                  child: Icon(
                                    FontAwesomeIcons.calendarDays,
                                    size: 40,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'EVENTS',
                                  style: TextStyle(
                                      fontFamily: Constants.semiBoldFont,
                                      fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 280,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(35),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0XFFD9D9D9)),
                                child: Icon(
                                  Icons.calculate_outlined,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'CGPA CALC',
                                style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(35),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0XFFD9D9D9)),
                                child: Icon(
                                  FontAwesomeIcons.squarePollVertical,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'RESULTS',
                                style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 280,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(35),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0XFFD9D9D9)),
                                child: Icon(
                                  FontAwesomeIcons.moneyBills,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'BILLS',
                                style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(35),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0XFFD9D9D9)),
                                child: Icon(
                                  FontAwesomeIcons.wpforms,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'FORMS',
                                style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
