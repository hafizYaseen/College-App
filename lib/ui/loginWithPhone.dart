import 'package:college_app/components/button1.dart';
import 'package:college_app/components/constants.dart';
import 'package:college_app/components/countryCodePicker.dart';
import 'package:college_app/ui/verifyCode.dart';
import 'package:college_app/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:page_transition/page_transition.dart';

class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  bool loading = false;
  final  phoneNumberController = TextEditingController();
  final auth = FirebaseAuth.instance;

  // CountryCodePicker controller = CountryCodePicker();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Login with Phone',
          style: TextStyle(fontFamily: Constants.boldFont, fontSize: 20),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Constants.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
        Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: Constants.primaryColor)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.center,
              child: IntlPhoneField(
                pickerDialogStyle: PickerDialogStyle(
                    countryCodeStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: Constants.semiBoldFont,
                    ),
                    countryNameStyle: TextStyle(
                        fontFamily: Constants.semiBoldFont,
                        fontSize: 16
                    ),
                    searchFieldCursorColor: Constants.primaryColor
                ),
                controller: phoneNumberController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorRadius: Radius.circular(10),
                cursorHeight: 25,
                cursorColor: Constants.primaryColor,
                // inputFormatters: [LengthLimitingTextInputFormatter(11)],
                textAlign: TextAlign.left,
                initialCountryCode: 'PK',
                showDropdownIcon: true,
                disableLengthCheck: true,
                keyboardType: TextInputType.phone,
                dropdownIconPosition: IconPosition.values[1],
                dropdownIcon: Icon(FontAwesomeIcons.gripLinesVertical,
                  color: Colors.black,),
                style: TextStyle(
                  fontFamily: Constants.lightFont,
                  fontSize: 20,
                  // height: 1
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none
                  ),
                  labelText: ' +923479868681',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: Constants.lightFont,
                    color: Colors.grey,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                ),
                dropdownTextStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: Constants.regularFont
                ),



              ),
            ),
          ),
        ),
            SizedBox(
              height: 50,
            ),
            ButtonOne(
                text1: 'Login',
                color: Colors.white,
                fontSize: 20,
                borderRadius: 10,
                firstColor: Constants.primaryColor,
                secondColor: Constants.primaryColor,
                borderColor: Constants.primaryColor,
                w: double.infinity,
                h: 50,
                loading: loading,
                onTap: (){
                  setState(() {
                    loading = true;
                  });
                  auth.verifyPhoneNumber(
                    phoneNumber: phoneNumberController.text,
                      verificationCompleted: (_){
                      setState(() {
                        loading = false;
                      });
                      },
                      verificationFailed: (e){
                        setState(() {
                          loading = false;
                        });
                      Utils().toastMessage(e.toString());
                      },
                      codeSent: (String verificationId, int? token){
                        setState(() {
                          loading = false;
                        });
                      Navigator.push(context, PageTransition(child: VerifyCodeScreen(verificationId: verificationId,), type: PageTransitionType.fade));
                      },
                      codeAutoRetrievalTimeout: (e){
                        setState(() {
                          loading = false;
                        });
                      Utils().toastMessage(e.toString());
                      });
                })
          ],
        ),
      ),
    );
  }
}
