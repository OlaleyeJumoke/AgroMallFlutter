import 'dart:convert';
import 'dart:io';

import 'package:agromallflutter/CustomWidgets/CustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class Register2 extends StatefulWidget {
  @override
  _Register2State createState() => _Register2State();
}

class _Register2State extends State<Register2> {
  File _croppedImageFile;
  static String _category, _uniqueId;
  bool isImage = false;
  String _networkImage;

  @override
  Widget build(BuildContext context) {
    //crop image and encode image function
    Future<Null> _cropImage(File file) async {
      File croppedImageFile = await ImageCropper.cropImage(
        sourcePath: file.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9,
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            toolbarColor: Theme.of(context).primaryColor,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        iosUiSettings: IOSUiSettings(
          minimumAspectRatio: 1.0,
        ),
        compressQuality: 90,
        compressFormat: ImageCompressFormat.jpg,
        maxHeight: 256,
        maxWidth: 256,
        cropStyle: CropStyle.circle,
      );

      String _imageEncoded = base64Encode(croppedImageFile.readAsBytesSync());
      setState(() {
        _croppedImageFile = croppedImageFile;
        _networkImage = _imageEncoded;
      });
    }

    _onImagePickerPressed(ImageSource source) async {
      File imageFile = await ImagePicker.pickImage(source: source);
      _cropImage(imageFile);
    }

    _selectImageFile() async {
      return showDialog<Null>(
        context: context,
        barrierDismissible: false, // user must tap button!

        builder: (BuildContext context) {
          return new SimpleDialog(
            title: const Text(
              'Select Picture',
              style: TextStyle(fontSize: 16.0),
            ),
            children: <Widget>[
              new SimpleDialogOption(
                  child: const Text('From Camera'),
                  onPressed: () async {
                    Navigator.pop(context);
                    _onImagePickerPressed(ImageSource.camera);
                  }),
              new SimpleDialogOption(
                  child: const Text('From Gallery'),
                  onPressed: () async {
                    Navigator.of(context).pop();
                    _onImagePickerPressed(ImageSource.gallery);
                  }),
              new SimpleDialogOption(
                child: const Text("Cancel"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        },
      );
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/background.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile Picture',
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 200.0,
                    padding: EdgeInsets.only(bottom: 12.0, right: 12.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0X99333333)),
                    child: Image.asset('assets/use1.png'),
                  ),
                  Positioned(right: 4.0,bottom: 4.0,
                    child: CircleAvatar(
                      radius: 36.0,
                      child: IconButton(
                        icon: Image.asset('assets/camera.png'),
                        onPressed: _selectImageFile,
                      ),
                    ),
                  )
                ],
              ),
              Container(margin: EdgeInsets.all(32.0),
                  child: Text('Upload a profile picture', textAlign: TextAlign.center,),),
              ButtonNext(null)
            ],
          ),
        ),
      ),
    );
  }
}
