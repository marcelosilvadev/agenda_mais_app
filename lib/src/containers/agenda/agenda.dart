import 'package:flutter/material.dart';

class Agenda extends StatefulWidget {
  @override
  _AgendaState createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
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