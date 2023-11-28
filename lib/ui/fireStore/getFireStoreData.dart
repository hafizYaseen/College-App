import 'dart:ffi';

import 'package:college_app/components/formFieldText.dart';
import 'package:college_app/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../components/constants.dart';

class GetFireStoreDataScreen extends StatefulWidget {
  const GetFireStoreDataScreen({super.key});

  @override
  State<GetFireStoreDataScreen> createState() => _GetFireStoreDataScreenState();
}

class _GetFireStoreDataScreenState extends State<GetFireStoreDataScreen> {
  final auth = FirebaseAuth.instance;
  final editController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get Firestore Data',
          style: TextStyle(fontFamily: Constants.boldFont, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Constants.primaryColor.withOpacity(0.7),
      ),
      body: Column(
        children: [
          // Expanded(child: StreamBuilder(
          //   stream: ref.onValue,
          //   builder: (context, AsyncSnapshot<DatabaseEvent> snapshot){
          //     if(!snapshot.hasData){
          //       return CircularProgressIndicator();
          //     }else{
          //       Map<dynamic, dynamic> map = snapshot.data?.snapshot.value as dynamic;
          //       List<dynamic> list = [];
          //       list.clear();
          //       list = map.values.toList();
          //       return ListView.builder(
          //           itemCount: snapshot.data?.snapshot.children.length,
          //           itemBuilder: (context, index){
          //             return ListTile(
          //               title: Text(list[index]['title']),
          //               subtitle: Text(list[index]['id']),
          //             );
          //           });
          //     }
          //   },
          // )),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
              return ListTile(
                title: Text('Yaseen'),
              );
            })
          )
        ],
      ),
    );
  }

  Future<void> showMyDialog(String title, String id) async {
    editController.text = title;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Update',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: Constants.semiBoldFont,
                  color: Constants.primaryColor),
            ),
            content: Container(
              height: 50,
              child: TextField(
                controller: editController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Constants.primaryColor),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: Constants.semiBoldFont,
                          color: Constants.primaryColor))),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Update',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: Constants.semiBoldFont,
                        color: Constants.primaryColor),
                  )),
            ],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            shadowColor: Constants.primaryColor,

          );
        });
  }
  Future<void> showMyDialog1(String title, String id) async {
    editController.text = title;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Delete',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: Constants.semiBoldFont,
                  color: Constants.primaryColor),
            ),
            content: Row(
              children: [
                Text('Do you want to delete ',style: TextStyle(fontSize: 16, fontFamily: Constants.regularFont),),
                Text('$title?',style: TextStyle(fontSize: 17, fontFamily: Constants.semiBoldFont, color: Constants.primaryColor))
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('No',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: Constants.semiBoldFont,
                          color: Constants.primaryColor))),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Yes',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: Constants.semiBoldFont,
                        color: Colors.red),
                  )),
            ],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            shadowColor: Constants.primaryColor,

          );
        });
  }
}
