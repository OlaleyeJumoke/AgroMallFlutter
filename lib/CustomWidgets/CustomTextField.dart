import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscure;
  final TextCapitalization capitalization;
  final String prefixImage;

  CustomTextField(
      {this.controller,
      this.labelText,
      this.obscure,
      this.capitalization,
      this.prefixImage,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Color(0X33333333),
      ),
      child: TextField(
        controller: controller,
        textCapitalization: capitalization,
        style: Theme.of(context).textTheme.bodyText1,
        decoration: InputDecoration(
          fillColor: Color(0X33333333),
          labelText: labelText,
          labelStyle: Theme.of(context)
              .textTheme
              .headline4
              .apply(backgroundColor: Color(0X33333333)),
          hintStyle: Theme.of(context).textTheme.bodyText1,
          hintText: hintText,
          prefixIcon: Image.asset(
            prefixImage,
            height: 24.0,
            width: 24.0,
            color: Color(0XFFB2B2B2),
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final bool obscure;
  final String prefixImage;

  PasswordTextField({
    this.controller,
    this.obscure,
    this.prefixImage,
  });

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscurity;

  @override
  void initState() {
    obscurity = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Color(0X33333333),
        ),
        child: TextField(
          controller: widget.controller,
          style: Theme.of(context).textTheme.bodyText1,
          decoration: InputDecoration(
            fillColor: Color(0X33333333),
            labelText: 'Password',
            labelStyle: Theme.of(context)
                .textTheme
                .headline4
                .apply(backgroundColor: Color(0X33333333)),
            hintStyle: Theme.of(context).textTheme.bodyText1,
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
                  obscurity ? Icons.visibility : Icons.visibility_off,
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
