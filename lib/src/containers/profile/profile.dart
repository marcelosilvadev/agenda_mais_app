import 'package:agenda_mais_app/src/containers/login/login_screen.dart';
import 'package:flutter/material.dart';

enum OrderOptions { sair }

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
          backgroundColor: const Color.fromRGBO(247, 64, 106, 1.0),
          centerTitle: true,
          title: Text(
            "Perfil",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            PopupMenuButton<OrderOptions>(
              itemBuilder: (context) => <PopupMenuEntry<OrderOptions>>[
                const PopupMenuItem<OrderOptions>(
                  child: Text("Sair"),
                  value: OrderOptions.sair,
                ),
              ],
              onSelected: logout,
            )
          ],
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
                        image: AssetImage("assets/images/perfil.jpeg"))),
              ),
            ),
            Text(
              "Marcelo de Andrade Silva",
              style: TextStyle(
                  color: Color.fromRGBO(247, 64, 106, 1.0),
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

  void logout(OrderOptions result) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
