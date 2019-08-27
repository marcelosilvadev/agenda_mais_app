import 'package:flutter/material.dart';

class Organization extends StatefulWidget {
  @override
  _OrganizationState createState() => _OrganizationState();
}

class _OrganizationState extends State<Organization> {
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
            "Estabelecimentos",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: <Widget>[],
        ));
  }
}
