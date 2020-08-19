import 'dart:async';

import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'package:flare_flutter/flare_actor.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 15);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SecondScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: FlareActor(
        "images/BackgroundLoop.flr",
        alignment: Alignment.center,
        fit: BoxFit.fill,
        animation: "Background",
      ),
    );
  }
}
