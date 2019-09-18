import 'package:agenda_mais_app/src/containers/new_schedule/schedule.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Agenda extends StatefulWidget {
  @override
  _AgendaState createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  bool load = false;
  List response;

  Future<Map> _getAgenda() async {
    http.Response response;
    response = await http
        .get("http://www.mocky.io/v2/5d8171dc300000e325699695");

    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();

    _getAgenda().then((res) {
      setState(() {
        response = res["data"];
        load = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 64, 106, 1.0),
        centerTitle: true,
        title: Text(
          "Agendamentos",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          load == true
              ? Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 10.0, left: 10, right: 10),
                      itemCount: response.length,
                      itemBuilder: (context, index) {
                        return _agendaCard(context, index, response);
                      }),
                )
              : Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: CircularProgressIndicator(),
                      ),
                    ],
                  ),
                )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewSchedule()));
        },
        tooltip: 'Novo Agendamento',
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(247, 64, 106, 1.0),
      ),
    );
  }

  Widget _agendaCard(BuildContext context, int index, response) {
    return InkWell(
      onTap: () async {
        print("");
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 5.0),
        child: Card(
          child: Row(
            children: <Widget>[
              Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(response[index]["image"]))),
              ),
              Flexible(
                  child: Padding(
                padding: EdgeInsets.only(left: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 7),
                      child: Text(
                        "${response[index]["organization"]}",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    fieldsAgenda("Data", "${response[index]["data"]}"),
                    fieldsAgenda("Hora", "${response[index]["hora"]}"),
                    fieldsAgenda("Serviço", "${response[index]["servico"]}"),
                    fieldsAgenda("Tempo", "${response[index]["tempo"]}")
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget fieldsAgenda(String title, String value) {
    return Row(
      children: <Widget>[
        Text(
          "${title}: ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("${value}"),
      ],
    );
  }
}
