import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'constants.dart';

class CountryCodePicker extends StatefulWidget {
 TextEditingController controller = TextEditingController();

  CountryCodePicker({super.key,  required this.controller});

  @override
  State<CountryCodePicker> createState() => _CountryCodePickerState();
}

class _CountryCodePickerState extends State<CountryCodePicker> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
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
            controller: controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            cursorRadius: Radius.circular(10),
            cursorHeight: 25,
            cursorColor: Constants.primaryColor,
            inputFormatters: [LengthLimitingTextInputFormatter(10)],
            textAlign: TextAlign.left,
            initialCountryCode: 'PK',
            showDropdownIcon: true,
            disableLengthCheck: true,
            keyboardType: TextInputType.number,
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
              labelText: ' 3479868681',
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
    );
  }
}
