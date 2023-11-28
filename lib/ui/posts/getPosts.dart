import 'dart:ffi';

import 'package:college_app/components/formFieldText.dart';
import 'package:college_app/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../components/constants.dart';

class GetPostsScreen extends StatefulWidget {
  const GetPostsScreen({super.key});

  @override
  State<GetPostsScreen> createState() => _GetPostsScreenState();
}

class _GetPostsScreenState extends State<GetPostsScreen> {
  final auth = FirebaseAuth.instance;
  final ref = FirebaseDatabase.instance.ref('Post');
  final searchFilterController = TextEditingController();
  final editController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get Posts',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              controller: searchFilterController,
              keyboardType: TextInputType.text,
              style: TextStyle(
                  fontFamily: Constants.regularFont,
                  fontSize: 16,
                  color: Colors.black,
                  decoration: TextDecoration.none),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Constants.primaryColor,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontFamily: Constants.regularFont),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Constants.primaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(10))),
              onChanged: (String value) {
                setState(() {});
              },
            ),
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: ref,
                defaultChild: Align(
                    alignment: Alignment.center,
                    child: Text('Loading...', style: TextStyle(fontFamily: Constants.semiBoldFont, fontSize: 26),)),
                itemBuilder: (context, snapshot, animation, index) {
                  final title = snapshot.child('title').value.toString();
                  final id = snapshot.child('id').value.toString();

                  if (searchFilterController.text.isEmpty) {
                    return ListTile(
                      title: Text(
                        snapshot.child('title').value.toString(),
                        style: TextStyle(
                            fontFamily: Constants.regularFont, fontSize: 16),
                      ),
                      subtitle: Text(snapshot.child('id').value.toString(),
                          style: TextStyle(
                              fontFamily: Constants.lightFont, fontSize: 16)),
                      trailing: PopupMenuButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        shadowColor: Constants.primaryColor,
                        
                        icon: Icon(Icons.more_vert),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                              value: 1,
                              child: ListTile(
                                leading: Icon(Icons.edit),
                                title: Text(
                                  'Edit',
                                ),
                                titleTextStyle: TextStyle(
                                fontFamily: Constants.regularFont,
                                fontSize: 16,
                                  color: Colors.black
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                  showMyDialog(title, id);
                                },
                              )),
                          PopupMenuItem(
                              value: 2,
                              child: ListTile(
                                leading: Icon(Icons.delete),
                                title: Text(
                                  'Delete',
                                ),
                                onTap: (){
                                  Navigator.pop(context);
                                  showMyDialog1(title, id);
                                },
                                titleTextStyle: TextStyle(
                                    fontFamily: Constants.regularFont,
                                    fontSize: 16,
                                    color: Colors.black
                                ),
                              )),
                        ],
                      ),
                    );
                  } else if (title.toLowerCase().contains(searchFilterController
                      .text
                      .toLowerCase()
                      .toLowerCase())) {
                    return ListTile(
                      title: Text(
                        snapshot.child('title').value.toString(),
                        style: TextStyle(
                            fontFamily: Constants.regularFont, fontSize: 16),
                      ),
                      subtitle: Text(snapshot.child('id').value.toString(),
                          style: TextStyle(
                              fontFamily: Constants.lightFont, fontSize: 16)),
                    );
                  } else {
                    return Container();
                  }
                }),
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
                    ref.child(id).update({
                      'title': editController.text.toString()
                    }).then((value){
                      Utils().toastMessage('Updated Successfully');
                    }).onError((error, stackTrace){
                      Utils().toastMessage(error.toString());
                    });
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
                    ref.child(id).remove().then((value){
                      Utils().toastMessage('Removed Successfully');
                    }).onError((error, stackTrace){
                      Utils().toastMessage(error.toString());
                    });
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
