import 'package:agromallflutter/CustomWidgets/CustomButton.dart';
import 'package:agromallflutter/CustomWidgets/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

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
          body: Center(
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
                CustomTextField(email, 'Email', false, TextCapitalization.none,
                    "assets/email.png"),
                PasswordTextField(password, "assets/lock.png"),
                SignInButton(null)
              ],
            ),
          ),
        ));
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
