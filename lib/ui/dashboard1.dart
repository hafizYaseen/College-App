import 'package:college_app/components/button1.dart';
import 'package:college_app/ui/firstPage.dart';
import 'package:college_app/ui/posts/addPosts.dart';
import 'package:college_app/ui/profilePage.dart';
import 'package:college_app/ui/submissionPage.dart';
import 'package:college_app/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import '../components/constants.dart';

class DashboardOne extends StatefulWidget {
  const DashboardOne({super.key});

  @override
  State<DashboardOne> createState() => _DashboardOneState();
}

class _DashboardOneState extends State<DashboardOne> {

  final auth = FirebaseAuth.instance;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 10),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: (){
                Navigator.push(context, PageTransition(child: ProfilePage(), type: PageTransitionType.fade));
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Constants.primaryColor, width: 2),
                    borderRadius: BorderRadius.circular(100)),
                child: CircleAvatar(
                  child: Text(
                    'YE',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: Constants.boldFont,
                        color: Constants.primaryColor),
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
            title: Text(
              'Yaseen Ejaz',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: Constants.boldFont,
                  color: Constants.primaryColor),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ButtonOne(
                    text1: 'MENU',
                    color: Colors.white,
                    fontSize: 16,
                    onTap: (){},
                    fontFamily: Constants.extraBoldFont,
                    firstColor: Constants.primaryColor.withOpacity(0.80),
                    secondColor: Constants.secondaryColor.withOpacity(0.8),
                    borderRadius: 30,
                    borderColor: Colors.transparent,
                    w: 90,
                    h: 10),
              ),
              IconButton(onPressed: (){
                auth.signOut().then((value){
                  Navigator.push(context, PageTransition(child: FirstPage(), type: PageTransitionType.fade));
                }).onError((error, stackTrace){
                  Utils().toastMessage('Failed to Log Out');
                });
              },
                  icon: Icon(Icons.logout_outlined, color: Constants.primaryColor, size: 30,))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, PageTransition(child: AddPostsScreen(), type: PageTransitionType.fade));
        },
        child: Icon(Icons.add),
        backgroundColor: Constants.primaryColor.withOpacity(0.7),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Today Class',
                    style: TextStyle(
                        fontFamily: Constants.semiBoldFont, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 90,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Constants.tertiaryColor.withOpacity(0.3)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cryptography & Network\nSystem',
                              style: TextStyle(
                                  fontFamily: Constants.semiBoldFont,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '8:00 - 8:50 AM',
                              style: TextStyle(
                                  fontFamily: Constants.semiBoldFont,
                                  fontSize: 12,
                                  color: Color(0XFF161697)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Constants.tertiaryColor.withOpacity(0.3)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cloud Computing',
                              style: TextStyle(
                                  fontFamily: Constants.semiBoldFont,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '8:50 - 9:40 AM',
                              style: TextStyle(
                                  fontFamily: Constants.semiBoldFont,
                                  fontSize: 12,
                                  color: Color(0XFF161697)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Submission Task',
                      style: TextStyle(
                          fontFamily: Constants.semiBoldFont, fontSize: 22),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          fontFamily: Constants.regularFont,
                          fontSize: 14,
                          color: Color(0XFF161697)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(child: SubmissionPage(), type: PageTransitionType.fade));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Constants.tertiaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Constants.tertiaryColor),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Problem Solving',
                                  style: TextStyle(
                                      fontFamily: Constants.semiBoldFont,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Cryptography & Network Security',
                                  style: TextStyle(
                                      fontFamily: Constants.regularFont,
                                      fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 208, top: 15),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.watch_later_outlined,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '09/10/2023',
                                        style: TextStyle(
                                            fontFamily: Constants.regularFont,
                                            fontSize: 9),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Constants.secondaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Constants.secondaryColor),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Guest OS Installation',
                                style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Cloud Computing',
                                style: TextStyle(
                                    fontFamily: Constants.regularFont,
                                    fontSize: 12),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 208, top: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '09/10/2023',
                                      style: TextStyle(
                                          fontFamily: Constants.regularFont,
                                          fontSize: 9),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Constants.tertiaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Constants.tertiaryColor),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Case Study',
                                style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Software Project Management',
                                style: TextStyle(
                                    fontFamily: Constants.regularFont,
                                    fontSize: 12),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 208, top: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      CupertinoIcons.calendar_badge_plus,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '09/10/2023',
                                      style: TextStyle(
                                          fontFamily: Constants.regularFont,
                                          fontSize: 9),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Attendance',
                    style: TextStyle(
                        fontFamily: Constants.semiBoldFont, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Constants.tertiaryColor.withOpacity(0.3),
                  borderRadius:  BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Subjects',
                              style: TextStyle(
                                  fontFamily: Constants.semiBoldFont,
                                  fontSize: 18,
                                  color: Constants.secondaryColor),
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar_badge_plus,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Oct - Sep 2023',
                                  style: TextStyle(
                                      fontFamily: Constants.regularFont,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 20,),
                                Text(
                                  'OBM752 - ( 32/45 ) 71%',
                                  style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'MG8591 - ( 26/31 ) 84%',
                                  style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'IT8761 - ( 10/14 ) 71%',
                                  style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'IT8711 - ( 11/11 ) 100%',
                                  style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'IT8075 - ( 32/45 ) 71%',
                                  style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'IBM - ( 32/45 ) 71%',
                                  style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'DMI001 - ( 32/45 ) 71%',
                                  style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'CS8792 - ( 32/45 ) 71%',
                                  style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'CS8791 - ( 34/36 ) 94%',
                                  style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                            Container(child: Image(image: AssetImage('assets/images/GRAPH.png')))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Upcoming Schedules',
                    style: TextStyle(
                        fontFamily: Constants.semiBoldFont, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Constants.secondaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Constants.secondaryColor),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Culturals',
                                style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'For 3rd and 4th year Students',
                                style: TextStyle(
                                    fontFamily: Constants.regularFont,
                                    fontSize: 12),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 208, top: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      CupertinoIcons.calendar_badge_plus,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '09/10/2023',
                                      style: TextStyle(
                                          fontFamily: Constants.regularFont,
                                          fontSize: 9),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Constants.tertiaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Constants.tertiaryColor),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sports Day',
                                style: TextStyle(
                                    fontFamily: Constants.semiBoldFont,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Prize distribution for winning and participating\nstudents',
                                style: TextStyle(
                                    fontFamily: Constants.regularFont,
                                    fontSize: 12),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 208),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      CupertinoIcons.calendar_badge_plus,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '09/10/2023',
                                      style: TextStyle(
                                          fontFamily: Constants.regularFont,
                                          fontSize: 9),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
