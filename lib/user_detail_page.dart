import 'package:flutter/material.dart';
import 'package:flutter_app_tablayout/RaisedButtonGradient.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_app_tablayout/get_measurements_page.dart';
import 'package:flutter_app_tablayout/show_measurements_page.dart';

class UserDetailPage extends StatefulWidget {
  static String tag = 'user-detail-page';
  @override
  _UserDetailPageState createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  int _radioValue = 0;
  String gender = "Male";

  void _handleGenderRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
      switch (_radioValue) {
        case 0:
          gender = "Male";
          break;
        case 1:
          gender = "Female";
          break;
      }
    });
  }

  var frontImage = null;
  var sideImage = null;

  bool _isFrontImageSelected;
  bool _isSideImageSelected;

  @override
  void initState() {
    super.initState();
    _isFrontImageSelected = false;
    _isSideImageSelected = false;
  }

  openCamera(String type) async {
    if(type=='FRONT') {
      frontImage = await ImagePicker.pickImage(source: ImageSource.camera);
    }
    else {
      sideImage = await ImagePicker.pickImage(source: ImageSource.camera);
    }
    setState(() {
      if(frontImage!=null) {
        _isFrontImageSelected = true;
        print("front image selected.");
      }
      if(sideImage!=null){
        _isSideImageSelected = true;
        print("side image selected.");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 56.0, 24.0, 24.0),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                "Enter Name:",
                style: TextStyle(color: Colors.blue, fontFamily: 'Nunito', fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              autofocus: false,
              initialValue: '',
              decoration: InputDecoration(
                hintText: 'Name',
                contentPadding: EdgeInsets.all(16.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                "Enter Mobile:",
                style: TextStyle(color: Colors.blue, fontFamily: 'Nunito', fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              autofocus: false,
              initialValue: '',
              decoration: InputDecoration(
                hintText: 'Mobile',
                contentPadding: EdgeInsets.all(16.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                "Select Gender:",
                style: TextStyle(color: Colors.blue, fontFamily: 'Nunito', fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: 'male',
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 48.0,
                          child: Image.asset('lib/assets/ic_male.png'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Radio(
                            value: 0,
                            groupValue: _radioValue,
                            onChanged: _handleGenderRadioValueChange,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text(
                              "Male",
                              style: TextStyle(fontFamily: 'Nunito', fontSize: 15.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: 'female',
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 48.0,
                          child: Image.asset('lib/assets/ic_female.png'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: _radioValue,
                            onChanged: _handleGenderRadioValueChange,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text(
                              "Female",
                              style: TextStyle(fontFamily: 'Nunito', fontSize: 15.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                "Enter Height:",
                style: TextStyle(color: Colors.blue, fontFamily: 'Nunito', fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              autofocus: false,
              initialValue: '',
              decoration: InputDecoration(
                hintText: 'cm',
                contentPadding: EdgeInsets.all(16.0),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, right: 8.0),
                    child: RaisedGradientButton(
                      child: Text(
                        'Front Image',
                        style: TextStyle(color: Colors.white, fontSize: 15.0, fontFamily: 'Nunito', fontWeight: FontWeight.bold),
                      ),
                      gradient: LinearGradient(
                        colors: _isFrontImageSelected ? <Color>[Colors.grey, Colors.grey] : <Color>[Colors.purple, Colors.blue],
                      ),
                      onPressed: _isFrontImageSelected ? null : (){
                        openCamera("FRONT");
                      }
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 8.0),
                    child: RaisedGradientButton(
                      child: Text(
                        'Side Image',
                        style: TextStyle(color: Colors.white, fontSize: 15.0, fontFamily: 'Nunito', fontWeight: FontWeight.bold),
                      ),
                      gradient: LinearGradient(
                        colors: _isSideImageSelected ? <Color>[Colors.grey, Colors.grey] : <Color>[Colors.purple, Colors.blue],
                      ),
                      onPressed: _isSideImageSelected ? null : (){
                        openCamera("SIDE"); 
                      }
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: RaisedGradientButton(
                child: Text(
                  'Get Measurements',
                  style: TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: 'Nunito', fontWeight: FontWeight.bold),
                ),
                gradient: LinearGradient(
                  colors: <Color>[Colors.purple, Colors.blue],
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShowMeasurementsPage()),
                    );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}