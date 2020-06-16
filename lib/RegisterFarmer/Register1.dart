import 'package:agromallflutter/CustomWidgets/CustomButton.dart';
import 'package:agromallflutter/CustomWidgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class Register1 extends StatefulWidget {
  @override
  _Register1State createState() => _Register1State();
}

class _Register1State extends State<Register1> {
  TextEditingController fullName = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController phoneNumber = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 24.0),
                    child: Image.asset("assets/agromall.png")),
                Container(
                  margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Text(
                    "Welcome Back",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                CustomTextField(fullName, 'Full Name', false,
                    TextCapitalization.words, "assets/user.png"),
                CustomTextField(email, 'Email', false, TextCapitalization.none,
                    "assets/email.png"),
                CustomTextField(phoneNumber, 'Phone number', false,
                    TextCapitalization.none, "assets/phone.png"),
                ButtonNext(null)
              ],
            ),
          ),
        ));
  }
}
