import 'package:event_360/components/custom_suffix_icon.dart';
import 'package:event_360/components/form_error.dart';
import 'package:event_360/constants.dart';
import 'package:event_360/screen/opt%20screen/verification_otp.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

//formulaire d'inscription
class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? phoneNumber;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error!);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildPhoneFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Aller a la page otp si tout les données sont valide
                  Navigator.pushNamed(context, VerificationOtp.routeName);
                }
              },
              child: Text("Continuer".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  side: BorderSide.none,
                  shape: StadiumBorder()),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          enabledBorder: outlineInputBorder(),
          labelText: "Télephone",
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: kPrimaryColor)),
          labelStyle:
              TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
          hintText: "Entrez votre numero",
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Phone.svg",
          )),
    );
  }
}
