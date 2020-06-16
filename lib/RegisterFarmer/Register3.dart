import 'package:agromallflutter/CustomWidgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class Register3 extends StatefulWidget {
  @override
  _Register3State createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  TextEditingController farmName = TextEditingController();
  TextEditingController farmAddress = TextEditingController();
  TextEditingController longitude = TextEditingController();
  TextEditingController latitude = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Farm Details',
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 24.0,
              ),
              CustomTextField(farmName, 'Farm Name', false,
                  TextCapitalization.words, "assets/user.png"),
              CustomTextField(farmAddress, 'Farm Address', false,
                  TextCapitalization.words, "assets/mappin.png"),
              CustomTextField(longitude, 'Longitude', false,
                  TextCapitalization.words, "assets/compass.png"),
              CustomTextField(latitude, 'Latitude', false,
                  TextCapitalization.words, "assets/compass.png"),
            ],
          ),
        ),
      ),
    );
  }
}
