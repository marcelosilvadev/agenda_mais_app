import 'package:flutter/material.dart';

class NewSchedule extends StatefulWidget {
  @override
  _NewScheduleState createState() => _NewScheduleState();
}

class _NewScheduleState extends State<NewSchedule> {
  @override
  void initState() {
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 131, 202),
          centerTitle: true,
          title: Text(
            "Novo Agendamento",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: <Widget>[],
        ));
  }
}