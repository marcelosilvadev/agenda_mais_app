import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            "Perfil",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15.0),
              child: Container(
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/vendedor.png"))),
              ),
            ),
            Text(
              "Herminio Nascimento",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Divider(),
            Expanded(
              child: ListView(
                children: <Widget>[
                  fieldProfile("Cpf", "448.077.456-42"),
                  fieldProfile("Data Nascimento", "26/12/1997"),
                  fieldProfile("Sexo", "Masculino"),
                  fieldProfile("Email", "marcelosilva473@hotmail.com"),
                  fieldProfile("Telefone", "(16)3702-2058"),
                  fieldProfile("Celular", "(16)9 9236-2117"),
                  fieldProfile("Cidade", "Franca - SP")
                ],
              ),
            )
          ],
        ));
  }

  Widget fieldProfile(String fieldName, String value) {
    return Padding(
        padding: EdgeInsets.only(top: 5, left: 15, right: 15, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              fieldName,
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 17.0),
            )
          ],
        ));
  }
}
