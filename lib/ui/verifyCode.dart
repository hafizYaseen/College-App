import 'package:college_app/components/bottomNavigationBar.dart';
import 'package:college_app/components/button1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../components/constants.dart';
import '../utils/utils.dart';

class VerifyCodeScreen extends StatefulWidget {
  final String verificationId;
  const VerifyCodeScreen({super.key, required this.verificationId});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {

  final pinCodeController = TextEditingController();
  bool loading = false;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Verify',
          style: TextStyle(fontFamily: Constants.boldFont, fontSize: 20),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Constants.primaryColor.withOpacity(0.7),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PinCodeTextField(
              appContext: context,
              length: 6,
              controller: pinCodeController,
              cursorColor: Constants.primaryColor,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              textStyle:
                  TextStyle(fontSize: 18, fontFamily: Constants.regularFont),
              keyboardType: TextInputType.numberWithOptions(),
              pinTheme: PinTheme(
                  activeColor: Constants.primaryColor,
                  selectedColor: Colors.black,
                  inactiveColor: Constants.secondaryColor),
            ),
            SizedBox(height: 100,),
            ButtonOne(
                text1: 'Verify',
                color: Colors.white,
                fontSize: 20,
                borderRadius: 10,
                borderColor: Constants.primaryColor,
                w: double.infinity,
                h: 50,
                firstColor: Constants.primaryColor,
                secondColor: Constants.primaryColor,
                loading: loading,
                onTap: () async{
                  setState(() {
                    loading = true;
                  });
                  final credentials = PhoneAuthProvider.credential(
                      verificationId: widget.verificationId,
                      smsCode: pinCodeController.text.toString());

                  try{
                    await auth.signInWithCredential(credentials);
                    Navigator.push(context, PageTransition(child: NavigationBarBottom(), type: PageTransitionType.fade));
                  }catch(e){
                    setState(() {
                      loading = false;
                    });
                    Utils().toastMessage(e.toString());
                  }
                }
            )
          ],
        ),
      ),
    );
  }
}
