import 'package:college_app/components/bottomNavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import '../components/constants.dart';
import '../components/formFieldText.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 180,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Align(alignment: Alignment.topRight,
                          child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, PageTransition(child: NavigationBarBottom(), type: PageTransitionType.fade));
                              },
                              child: Icon(Icons.keyboard_arrow_up, size: 40, color: Colors.black,))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('My Profile',style: TextStyle(
                            fontSize: 26,
                            fontFamily: Constants.boldFont,
                            color: Colors.black),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 60,
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
                                      fontSize: 16,
                                      fontFamily: Constants.boldFont,
                                      color: Constants.primaryColor),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'yaseen.ejaz10@gmail.com',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: Constants.semiBoldFont,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(right: 5, bottom: 40),
                              child: Icon(FontAwesomeIcons.bell))
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
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          Color(0XFF79E0EE).withOpacity(0.5), Color(0XFF8896F6).withOpacity(0.5), Color(0XFF9747FF).withOpacity(0.5),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                      )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('DEPARTMENT :' ,style: TextStyle(fontSize: 13, fontFamily: Constants.boldFont, color: Colors.white),),
                            SizedBox(height: 15,),
                            Text('SEMESTER :' ,style: TextStyle(fontSize: 13, fontFamily: Constants.boldFont, color: Colors.white),),
                            SizedBox(height: 15,),
                            Text('CURRENT CGPA :' ,style: TextStyle(fontSize: 13, fontFamily: Constants.boldFont, color: Colors.white),),
                            SizedBox(height: 15,),
                            Text('ACADEMIC YEAR :' ,style: TextStyle(fontSize: 13, fontFamily: Constants.boldFont, color: Colors.white),),
                    ]
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('B.Tech. Information Technology',style: TextStyle(fontSize: 13, fontFamily: Constants.semiBoldFont, color: Constants.primaryColor),),
                            SizedBox(height: 15,),
                            Text('7',style: TextStyle(fontSize: 13, fontFamily: Constants.semiBoldFont, color: Constants.primaryColor),),
                            SizedBox(height: 15,),
                            Text('3.5',style: TextStyle(fontSize: 13, fontFamily: Constants.semiBoldFont, color: Constants.primaryColor),),
                            SizedBox(height: 15,),
                            Text('2020 - 2024',style: TextStyle(fontSize: 13, fontFamily: Constants.semiBoldFont, color: Constants.primaryColor),)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('About',style: TextStyle(
                          fontSize: 20,
                          fontFamily: Constants.boldFont,
                          color: Colors.black),),
                      Text('Edit', style: TextStyle(
                        fontFamily: Constants.regularFont,
                        fontSize: 12,
                        color: Constants.primaryColor
                      ),
                      textAlign: TextAlign.center,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('Date of Birth',
                          style: TextStyle(
                              fontFamily: Constants.regularFont,
                              fontSize: 16
                          ),),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('1st Jan 2002',
                          style: TextStyle(
                              fontFamily: Constants.mediumFont,
                              fontSize: 16
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('Gender',
                          style: TextStyle(
                              fontFamily: Constants.regularFont,
                              fontSize: 16
                          ),),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('MALE',
                          style: TextStyle(
                              fontFamily: Constants.mediumFont,
                              fontSize: 16
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Contact Details',style: TextStyle(
                          fontSize: 20,
                          fontFamily: Constants.boldFont,
                          color: Colors.black),),
                      Text('Edit', style: TextStyle(
                          fontFamily: Constants.regularFont,
                          fontSize: 12,
                          color: Constants.primaryColor
                      ),
                        textAlign: TextAlign.center,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('Contact no',
                          style: TextStyle(
                              fontFamily: Constants.regularFont,
                              fontSize: 16
                          ),),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('123456790',
                          style: TextStyle(
                              fontFamily: Constants.mediumFont,
                              fontSize: 16
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('Email',
                          style: TextStyle(
                              fontFamily: Constants.regularFont,
                              fontSize: 16
                          ),),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('abc123@gmail.com',
                          style: TextStyle(
                              fontFamily: Constants.mediumFont,
                              fontSize: 16
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('Address',
                          style: TextStyle(
                              fontFamily: Constants.regularFont,
                              fontSize: 16
                          ),),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('12, abc street, defgh, ijklm - 123456.',
                          style: TextStyle(
                              fontFamily: Constants.mediumFont,
                              fontSize: 16
                          ),),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Current / Ongoing Courses',style: TextStyle(
                        fontSize: 20,
                        fontFamily: Constants.boldFont,
                        color: Colors.black),),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.only(left: 5, right: 15, top: 8, bottom: 8),
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Constants.primaryColor.withOpacity(0.3)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Constants.primaryColor,
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: Icon(FontAwesomeIcons.graduationCap, color: Colors.white, size: 25,),
                          ),
                          Text('B.Tech IT',style: TextStyle(
                            fontSize: 18,
                            fontFamily: Constants.mediumFont,
                            color: Constants.primaryColor
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Information Technology', style: TextStyle(
                      fontFamily: Constants.mediumFont,
                      fontSize: 18
                    ),),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('Department of Engineering', style: TextStyle(
                        fontFamily: Constants.regularFont,
                        fontSize: 18
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.calendarDays),
                      SizedBox(width: 5,),
                      Text('Sep 2020 - June 2024', style: TextStyle(
                          fontFamily: Constants.mediumFont,
                          fontSize: 18
                      ),),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('2024 Passout Batch | 210520201234', style: TextStyle(
                        fontFamily: Constants.regularFont,
                        fontSize: 18
                    ),),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Projects',style: TextStyle(
                          fontSize: 20,
                          fontFamily: Constants.boldFont,
                          color: Colors.black),),
                      Row(
                        children: [
                          Icon(Icons.add_circle, color: Constants.primaryColor,),
                          SizedBox(width: 5,),
                          Text('Add new', style: TextStyle(
                              fontFamily: Constants.regularFont,
                              fontSize: 12,
                              color: Constants.primaryColor
                          ),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 70, top: 15, bottom: 30),
                    child: Text('You have not added any yet! ', style: TextStyle(
                      fontSize: 16,
                      fontFamily: Constants.regularFont,
                      color: Color(0XFF000000).withOpacity(0.51)
                    ),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Certifications',style: TextStyle(
                          fontSize: 20,
                          fontFamily: Constants.boldFont,
                          color: Colors.black),),
                      Row(
                        children: [
                          Icon(Icons.add_circle, color: Constants.primaryColor,),
                          SizedBox(width: 5,),
                          Text('Add new', style: TextStyle(
                              fontFamily: Constants.regularFont,
                              fontSize: 12,
                              color: Constants.primaryColor
                          ),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 70, top: 15, bottom: 30),
                    child: Text('You have not added any yet! ', style: TextStyle(
                        fontSize: 16,
                        fontFamily: Constants.regularFont,
                        color: Color(0XFF000000).withOpacity(0.51)
                    ),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Patents',style: TextStyle(
                          fontSize: 20,
                          fontFamily: Constants.boldFont,
                          color: Colors.black),),
                      Row(
                        children: [
                          Icon(Icons.add_circle, color: Constants.primaryColor,),
                          SizedBox(width: 5,),
                          Text('Add new', style: TextStyle(
                              fontFamily: Constants.regularFont,
                              fontSize: 12,
                              color: Constants.primaryColor
                          ),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 70, top: 15, bottom: 30),
                    child: Text('You have not added any yet! ', style: TextStyle(
                        fontSize: 16,
                        fontFamily: Constants.regularFont,
                        color: Color(0XFF000000).withOpacity(0.51)
                    ),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Extra Curricular Activities',style: TextStyle(
                          fontSize: 20,
                          fontFamily: Constants.boldFont,
                          color: Colors.black),),
                      Row(
                        children: [
                          Icon(Icons.add_circle, color: Constants.primaryColor,),
                          SizedBox(width: 5,),
                          Text('Add new', style: TextStyle(
                              fontFamily: Constants.regularFont,
                              fontSize: 12,
                              color: Constants.primaryColor
                          ),
                            textAlign: TextAlign.center,),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 70, top: 15, bottom: 30),
                    child: Text('You have not added any yet! ', style: TextStyle(
                        fontSize: 16,
                        fontFamily: Constants.regularFont,
                        color: Color(0XFF000000).withOpacity(0.51)
                    ),),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
