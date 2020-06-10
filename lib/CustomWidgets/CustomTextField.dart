import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  final bool obscure;
  final TextCapitalization capitalization;
  final String prefixImage;
  final String hintText;

  CustomTextField(
    this.controller,
    this.hintText,
    this.obscure,
    this.capitalization,
    this.prefixImage,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36.0),
          color: Color(0X99333333),
        ),
        child: TextField(
            cursorColor: Theme.of(context).cursorColor,
            controller: controller,
            textAlign: TextAlign.justify,
            textCapitalization: capitalization,
            style: Theme.of(context).textTheme.bodyText1,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: TextStyle(fontSize: 14.0, color: Colors.white70, fontFamily: "Lato"),
              hintText: hintText,
              prefixIcon: Image.asset(
                prefixImage,
                height: 20.0,
                width: 20.0,
                color: Color(0XFFB2B2B2),
              ),
            )));
  }
}

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String prefixImage;

  PasswordTextField(
    this.controller,
    this.prefixImage,
  );

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscurity;

  @override
  void initState() {
    obscurity = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36.0),
          color: Color(0X99333333),
        ),
        child: TextField(
          cursorColor: Theme.of(context).cursorColor,
          controller: widget.controller,
          textAlign: TextAlign.justify,
          style: Theme.of(context).textTheme.bodyText1,
          obscureText: obscurity,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(fontSize: 14.0, color: Colors.white70, fontFamily: "Lato"),
            hintText: "Enter your password",
            prefixIcon: Image.asset(
              widget.prefixImage,
              height: 24.0,
              width: 24.0,
              color: Color(0XFFB2B2B2),
            ),
            suffixIcon: IconButton(
                icon: Icon(
                  // Based on obscurity state choose the icon
                  obscurity ? Icons.visibility_off : Icons.visibility,
                  color: Color(0XFFB2B2B2),
                ),
                onPressed: () {
                  setState(() {
                    obscurity = !obscurity;
                  });
                }),
          ),
        ));
  }
}
