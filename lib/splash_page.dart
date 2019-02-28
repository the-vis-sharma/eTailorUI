import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:flutter_app_tablayout/instruction_page.dart';

class MySplashScreen extends StatefulWidget {
  static String tag = 'splash-page';
  MySplashScreen({Key key}) : super(key: key);

  @override
  MySplashScreenState createState() => new MySplashScreenState();
}

class MySplashScreenState extends State<MySplashScreen> {

  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "eTailor",
        styleTitle: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold, fontFamily: 'Billabong'),
        description: "For Custom Clothes Fitting",
        styleDescription: TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Nunito'),
        pathImage: "lib/assets/ic_female_full.png",
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundImage: "lib/assets/splash_bg.png",
        backgroundOpacity: 1,
        backgroundOpacityColor: Colors.transparent,
        backgroundBlendMode: BlendMode.lighten,
      ),
    );
    slides.add(
      new Slide(
        title: "Welcome",
        styleTitle: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'Nunito'),
        description: "Just take two photos of yourself and get body measurements",
        styleDescription: TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontFamily: 'Nunito'),
        pathImage: "lib/assets/ic_camera_frame.png",
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundImage: "lib/assets/splash_bg.png",
        backgroundOpacity: 1,
        backgroundOpacityColor: Colors.transparent,
        backgroundBlendMode: BlendMode.lighten,
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InstructionPage()),
    );
  }

  void onSkipPress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InstructionPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      nameDoneBtn: "Let's Start!",
      styleNameDoneBtn: TextStyle(color: Color(0xff7063CD), fontFamily: 'Nunito'),
      styleNameSkipBtn: TextStyle(color: Color(0xff7063CD), fontFamily: 'Nunito'),
      colorActiveDot: Color(0xff7063CD),
      onDonePress: this.onDonePress,
      onSkipPress: this.onSkipPress,
    );
  }
}