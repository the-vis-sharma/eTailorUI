import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
              "Measurement History",
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 30.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Card(
                elevation: 8.0,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(color: Colors.grey,),
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Hero(
                            tag: "Gender",
                            child: index%2==0 ? Image.asset("lib/assets/ic_male.png") : Image.asset("lib/assets/ic_female.png"),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.account_circle),
                                    Text(
                                      "Customer $index",
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
                                      "+91 XXXXX XXXXX",
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
                                    Icon(Icons.timer),
                                    Text(
                                      "05/02/2019 | 13:12",
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