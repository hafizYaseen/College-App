import 'package:college_app/components/button1.dart';
import 'package:college_app/components/constants.dart';
import 'package:college_app/components/formFieldText.dart';
import 'package:college_app/ui/posts/getPosts.dart';
import 'package:college_app/utils/utils.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AddPostsScreen extends StatefulWidget {
  const AddPostsScreen({super.key});

  @override
  State<AddPostsScreen> createState() => _AddPostsScreenState();
}

class _AddPostsScreenState extends State<AddPostsScreen> {

  final postController = TextEditingController();
  bool loading = false;
  final databaseRef = FirebaseDatabase.instance.ref('Post');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Posts',
          style: TextStyle(fontFamily: Constants.boldFont, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Constants.primaryColor.withOpacity(0.7),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            FormFieldText(
              controller: postController,
              h: 90,
              w: double.infinity,
              textInputType: TextInputType.text,
              hintText: "What's in your mind?",
              length: 200,
              borderColor: Colors.black,
              fillColor: Colors.transparent,
              enabledBorderColor: Constants.primaryColor,
              errorBorderColor: Colors.red,
              cursorColor: Colors.black,
              hintTextColor: Colors.grey,
              obscureText: false,
              enabledBorderRadius: BorderRadius.circular(10),
              focusedBorderRadius: BorderRadius.circular(10),
              errorBorderRadius: BorderRadius.circular(10),
              maxLines: 4,
            ),
            SizedBox(
              height: 30,
            ),
            ButtonOne(
                text1: 'Add',
                color: Colors.white,
                fontSize: 20,
                borderRadius: 10,
                firstColor: Constants.primaryColor.withOpacity(0.7),
                secondColor: Constants.primaryColor.withOpacity(0.7),
                borderColor: Constants.primaryColor.withOpacity(0.7),
                w: double.infinity,
                h: 50,
                loading: loading,
                onTap: (){
                  setState(() {
                    loading = true;
                  });

                  String id = DateTime.now().millisecondsSinceEpoch.toString();

                  databaseRef.child(id).set({
                    'id' : id,
                    'title' : postController.text.toString(),
                  }).then((value){
                    setState(() {
                      loading = false;
                    });
                    Utils().toastMessage('Post Added');
                  }).onError((error, stackTrace){
                    setState(() {
                      loading = false;
                    });
                    Utils().toastMessage(error.toString());
                  });
                }),
            SizedBox(
              height: 30,
            ),
            ButtonOne(
                text1: 'Get Posts',
                color: Constants.primaryColor,
                fontSize: 20,
                borderRadius: 10,
                firstColor: Colors.transparent,
                secondColor: Colors.transparent,
                borderColor: Constants.primaryColor.withOpacity(0.7),
                w: double.infinity,
                h: 50,
                onTap: (){
                  Navigator.push(context, PageTransition(child: GetPostsScreen(), type: PageTransitionType.fade));
                }),

          ],
        ),
      ),
    );
  }
}
