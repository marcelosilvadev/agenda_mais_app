import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashOkay extends StatefulWidget {
  @override
  _SplashOkayState createState() => _SplashOkayState();
}

class _SplashOkayState extends State<SplashOkay> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    Future.delayed(Duration(seconds: 2)).then((_) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/tabbar', (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 250,
          width: 250,
          child: FlareActor(
            "assets/images/okay.flr",
            animation: "okay",
          ),
        ),
        Text(
          "Agendamento Realizado!",
          style: TextStyle(
              fontSize: 25.0, color: Color.fromARGB(255, 122, 122, 122)),
          textAlign: TextAlign.center,
        )
      ],
    ));
  }
}
