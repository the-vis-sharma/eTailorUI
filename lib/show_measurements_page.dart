import 'package:flutter/material.dart';

class ShowMeasurementsPage extends StatefulWidget {
  static String tag = 'show-measurements-page';
  @override
  _ShowMeasurementsPageState createState() => _ShowMeasurementsPageState();
}

class _ShowMeasurementsPageState extends State<ShowMeasurementsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.0, 56.0, 24.0, 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Measurements",
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 30.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.account_circle),
                      Text(
                        "Vishnu Bochiwal",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.phone),
                      Text(
                        "+91 77270 84821",
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Card(
                elevation: 8.0,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(color: Colors.grey,),
                  itemCount: 20,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text("Measurement - $index",
                            style: TextStyle(color: Colors.grey, fontFamily: 'Nunito', fontSize: 15.0),
                          ),
                        ),
                        Expanded(
                          child: Text("$index cm", 
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Colors.blue, fontFamily: 'Nunito', fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}