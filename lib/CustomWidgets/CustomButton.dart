import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ButtonNext extends StatelessWidget {
  final function;

  ButtonNext(this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
      decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(24.0),
          shape: BoxShape.rectangle),
      child: FlatButton(
        onPressed: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Text(
              "NEXT",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.button,
            )),
            Image.asset(
              "assets/arrowright.png",
              height: 24.0,
              width: 24.0,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  final function;

  SignInButton(this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
      decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(24.0),
          shape: BoxShape.rectangle),
      child: FlatButton(
          onPressed: function,
          child: Text(
            "SIGN IN",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.button,
          )),
    );
  }
}
