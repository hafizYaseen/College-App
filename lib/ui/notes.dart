import 'package:college_app/components/bottomNavigationBar.dart';
import 'package:college_app/ui/notesPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../components/constants.dart';
import 'dashboard1.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
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
              'Notes / Materials',
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
                  Navigator.push(
                      context,
                      PageTransition(
                          child: NavigationBarBottom(),
                          type: PageTransitionType.fade));
                },
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, PageTransition(child: NotesPage(), type: PageTransitionType.fade));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      width: 110,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Constants.tertiaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('OBM752', style: TextStyle(
                            fontSize: 16,
                            fontFamily: Constants.semiBoldFont
                          ),),
                          SizedBox(height: 10,),
                          Text('Hospital Management',style: TextStyle(
                              fontSize: 14,
                              fontFamily: Constants.regularFont
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    width: 110,
                    height: 125,
                    decoration: BoxDecoration(
                      color: Constants.tertiaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('MG8591', style: TextStyle(
                          fontSize: 16,
                          fontFamily: Constants.semiBoldFont
                        ),),
                        SizedBox(height: 10,),
                        Text('Principles of Management',style: TextStyle(
                            fontSize: 14,
                            fontFamily: Constants.regularFont
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    width: 110,
                    height: 125,
                    decoration: BoxDecoration(
                      color: Constants.tertiaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('IT8761', style: TextStyle(
                          fontSize: 16,
                          fontFamily: Constants.semiBoldFont
                        ),),
                        SizedBox(height: 10,),
                        Text('Security Lab',style: TextStyle(
                            fontSize: 14,
                            fontFamily: Constants.regularFont
                        ),),
                        SizedBox(height: 16,),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    width: 110,
                    height: 125,
                    decoration: BoxDecoration(
                      color: Constants.tertiaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('IT8705', style: TextStyle(
                          fontSize: 16,
                          fontFamily: Constants.semiBoldFont
                        ),),
                        SizedBox(height: 10,),
                        Text('Software Project Management',style: TextStyle(
                            fontSize: 14,
                            fontFamily: Constants.regularFont
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    width: 110,
                    height: 125,
                    decoration: BoxDecoration(
                      color: Constants.tertiaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('CS8792 ', style: TextStyle(
                          fontSize: 16,
                          fontFamily: Constants.semiBoldFont
                        ),),
                        SizedBox(height: 10,),
                        Text('Cryptography & Network Security',style: TextStyle(
                            fontSize: 14,
                            fontFamily: Constants.regularFont
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    width: 110,
                    height: 125,
                    decoration: BoxDecoration(
                      color: Constants.tertiaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('CS8791', style: TextStyle(
                          fontSize: 16,
                          fontFamily: Constants.semiBoldFont
                        ),),
                        SizedBox(height: 10,),
                        Text('Cloud Computing',style: TextStyle(
                            fontSize: 14,
                            fontFamily: Constants.regularFont
                        ),),
                        SizedBox(height: 16,),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
