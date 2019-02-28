import 'package:flutter/material.dart';

class GetMeasurementsPage extends StatefulWidget {
  static String tag = 'get-measurement-page';
  @override
  _GetMeasurementsPageState createState() => _GetMeasurementsPageState();
}

class _GetMeasurementsPageState extends State<GetMeasurementsPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/loading_bg.png"),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: 
                      new CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation(Colors.white),
                      strokeWidth: 8.0),
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Text(
                "Doing Magic...",
                style: TextStyle(fontFamily: 'Nunito', fontSize: 20.0, color: Colors.white),
              ),
              Text(
                "Hold On...",
                style: TextStyle(fontFamily: 'Nunito', fontSize: 20.0, color: Colors.white),
              )
            ],
          ), 

        ),
      ),
    );
  }
}