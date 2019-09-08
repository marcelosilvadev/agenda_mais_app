import 'package:agenda_mais_app/src/containers/new_schedule/schedule.dart';
import 'package:flutter/material.dart';

class Agenda extends StatefulWidget {
  @override
  _AgendaState createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  bool load = true;
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
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return _agendaCard(context, index);
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

  Widget _agendaCard(BuildContext context, int index) {
    var imageUrl =
        "https://casaefesta.com/wp-content/uploads/2015/02/decoracao-de-salao-de-beleza-tudo-o-que-voce-precisa-saber-58.jpg";
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
                    image: DecorationImage(image: NetworkImage(imageUrl))),
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
                        "Studio Vida em Fios",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    fieldsAgenda("Data", "23/09/2019"),
                    fieldsAgenda("Hora", "13:30"),
                    fieldsAgenda("Serviço", "Corte de Cabelo"),
                    fieldsAgenda("Tempo", "30 minutos")
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
