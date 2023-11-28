import 'package:college_app/components/button1.dart';
import 'package:college_app/components/formFieldText.dart';
import 'package:college_app/ui/dashboard1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

import '../components/constants.dart';

class SubmissionPage extends StatefulWidget {
  const SubmissionPage({super.key});

  @override
  State<SubmissionPage> createState() => _SubmissionPageState();
}

class _SubmissionPageState extends State<SubmissionPage> {
  bool isChecked = false;

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
            titleSpacing: 5,
            title: Text(
              'Submission Task',
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Constants.tertiaryColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Constants.tertiaryColor),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Problem Solving',
                                      style: TextStyle(
                                          fontFamily: Constants.semiBoldFont,
                                          fontSize: 14),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Cryptography & Network Security',
                                        style: TextStyle(
                                            fontFamily: Constants.regularFont,
                                            fontSize: 12),
                                      ),
                                      SizedBox(
                                        width: 35.7,
                                      ),
                                      Row(
                                        //  crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.watch_later_outlined,
                                            size: 12,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '09/10/2023',
                                            style: TextStyle(
                                                fontFamily: Constants.regularFont,
                                                fontSize: 8),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Column(
                                children: [
                                  Icon(FontAwesomeIcons.paperclip),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Attach File',
                                    style: TextStyle(
                                        fontFamily: Constants.regularFont,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            FormFieldText(
                              h: 85,
                              w: 200,
                              textInputType: TextInputType.text,
                              hintText: 'Write Something',
                              length: 1000,
                              borderColor: Constants.tertiaryColor,
                              fillColor: Colors.transparent,
                              enabledBorderColor: Constants.primaryColor,
                              errorBorderColor: Colors.red,
                              cursorColor: Constants.primaryColor,
                              hintTextColor: Colors.black,
                              obscureText: false,
                              maxLines: 3,
                              enabledBorderRadius: BorderRadius.circular(10),
                              focusedBorderRadius: BorderRadius.circular(10),
                              errorBorderRadius: BorderRadius.circular(10),
                            )
                          ],
                        ),
                        ButtonOne(
                            text1: 'Submit',
                            color: Colors.black,
                            fontSize: 16,
                            borderRadius: 100,
                            backColor: Colors.black,
                            borderColor: Colors.white,
                            firstColor: Colors.white,
                            secondColor: Colors.white,
                            onTap: (){},
                            w: 100,
                            h: 30),
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 25,
                              child: Theme(
                                data: ThemeData(
                                    unselectedWidgetColor:
                                        Constants.tertiaryColor),
                                child: Checkbox(
                                    activeColor: Constants.tertiaryColor,
                                    checkColor: Colors.black,
                                    value: isChecked,
                                    onChanged: (newValue) {
                                      setState(() {
                                        isChecked = newValue!;
                                      });
                                    }),
                              ),
                            ),
                            Text(
                              'Mark as Done',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: Constants.regularFont,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text('Remarks',style: TextStyle(
                          fontFamily: Constants.semiBoldFont,
                          fontSize: 20
                        ),),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            child: Text('Submitted Date',
                              style: TextStyle(
                                  fontFamily: Constants.semiBoldFont,
                                  fontSize: 18
                              ),),
                          ),
                          Expanded(
                            child: Text('07/09/2023',
                              style: TextStyle(
                                  fontFamily: Constants.regularFont,
                                  fontSize: 18
                              ),),
                          )
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Expanded(
                            child: Text('Verified by',
                              style: TextStyle(
                                  fontFamily: Constants.semiBoldFont,
                                  fontSize: 18
                              ),),
                          ),
                          Expanded(
                            child: Text('ABCDEFG',
                              style: TextStyle(
                                  fontFamily: Constants.regularFont,
                                  fontSize: 18
                              ),),
                          )
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Expanded(
                            child: Text('Marks',
                              style: TextStyle(
                                  fontFamily: Constants.semiBoldFont,
                                  fontSize: 18
                              ),),
                          ),
                          Expanded(
                            child: Text('10 / 10',
                              style: TextStyle(
                                  fontFamily: Constants.regularFont,
                                  fontSize: 18
                              ),),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
