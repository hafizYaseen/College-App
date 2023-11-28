import 'package:college_app/ui/notes.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../components/constants.dart';
import 'dashboard1.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            titleSpacing: -50,
            title: Text(
              'OBM752 Notes / Materials',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: Constants.boldFont,
                  color: Colors.black),
            ),
            actions: [
              GestureDetector(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 101,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Constants.tertiaryColor.withOpacity(0.3)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Constants.tertiaryColor),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10, top: 15, bottom: 15
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Unit 1',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: Constants.semiBoldFont
                                    ),),
                                  SizedBox(height: 15,),
                                  Text('Overview of Hospital Administration',style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: Constants.regularFont
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 101,
                              child: Icon(Icons.file_download_outlined,size: 30,),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 101,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constants.tertiaryColor.withOpacity(0.3)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Constants.tertiaryColor),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 15, bottom: 15
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Unit 2',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: Constants.semiBoldFont
                                    ),),
                                  SizedBox(height: 15,),
                                  Text('Human Resource Management in Hospital',style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: Constants.regularFont
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 101,
                              child: Icon(Icons.file_download_outlined,size: 30,),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 101,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constants.tertiaryColor.withOpacity(0.3)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Constants.tertiaryColor),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 15, bottom: 15
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Unit 3',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: Constants.semiBoldFont
                                    ),),
                                  SizedBox(height: 15,),
                                  Text('Recruitment and Training',style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: Constants.regularFont
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 101,
                              child: Icon(Icons.file_download_outlined,size: 30,),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 101,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constants.tertiaryColor.withOpacity(0.3)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Constants.tertiaryColor),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 15, bottom: 15
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Unit 4',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: Constants.semiBoldFont
                                    ),),
                                  SizedBox(height: 15,),
                                  Text('Supportive Services',style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: Constants.regularFont
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 101,
                              child: Icon(Icons.file_download_outlined,size: 30,),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 101,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Constants.tertiaryColor.withOpacity(0.3)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Constants.tertiaryColor),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 15, bottom: 15
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Unit 5',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: Constants.semiBoldFont
                                    ),),
                                  SizedBox(height: 15,),
                                  Text('Communication and Safety Aspects in Hospital',style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: Constants.regularFont
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 101,
                              child: Icon(Icons.file_download_outlined,size: 30,),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
