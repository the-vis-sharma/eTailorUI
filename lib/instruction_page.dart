import 'package:flutter/material.dart';
import 'package:flutter_app_tablayout/user_detail_page.dart';
import 'package:flutter_app_tablayout/RaisedButtonGradient.dart';

class InstructionPage extends StatefulWidget {
  static String tag = 'instruction-page';
  @override
  _InstructionPageState createState() => new _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       body: new Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('lib/assets/splash_bg.png'),
             fit: BoxFit.cover,
            ),
            
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
                child: Column(
                  children: <Widget>[
                    Text(
                      "How to take photos\n",
                      style: TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: 'Nunito'),
                    ),
                    Text(
                      "Please read the instruction properly before going ahead and get yourself ready",
                      style: TextStyle(color: Colors.white, fontSize: 15.0, fontFamily: 'Nunito'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
                  child: Column(
                    children: <Widget>[
                      new TabBar(
                        controller: controller,
                        tabs: <Widget>[
                          new Tab(text: "Front"),
                          new Tab(text: "Side",),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(56.0, 8.0, 56.0, 8.0),
                          child: TabBarView(
                            controller: controller,
                            children: <Widget>[
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('lib/assets/front_instruction.jpg'),
                                    fit: BoxFit.fill
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('lib/assets/side_instruction.jpg'),
                                    fit: BoxFit.fill
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(56, 0, 56, 24),
                child: RaisedGradientButton(
                  child: Text(
                    'Got It',
                    style: TextStyle(color: Colors.white, fontFamily: 'Nunito', fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  gradient: LinearGradient(
                    colors: <Color>[Colors.purple, Colors.blue],
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserDetailPage()),
                    );
                  }
                )
              ),
            ],
          ),
       ),
    );
  }
}