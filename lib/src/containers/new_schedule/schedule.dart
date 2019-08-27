import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewSchedule extends StatefulWidget {
  @override
  _NewScheduleState createState() => _NewScheduleState();
}

class _NewScheduleState extends State<NewSchedule> {
  @override
  void initState() {
    super.initState();
  }

  String organizationName;
  List organizations = [
    {"id": "1", "name": "Studio Vida em Fios"},
    {"id": "2", "name": "Espaço Saúde"},
    {"id": "3", "name": "Petshop Andrade"},
    {"id": "4", "name": "Estética que Renasce"},
    {"id": "5", "name": "Barbearia Viking"},
    {"id": "6", "name": "Hair Style"}
  ];
  String employeName;
  List employes = [
    {"id": "1", "name": "Helder Prazeres"},
    {"id": "2", "name": "Tatiana Carolina"},
    {"id": "3", "name": "Ananda Bonfim"},
    {"id": "4", "name": "Gabriel Silva"},
  ];

  String serviceName;
  List services = [
    {"id": "1", "name": "Corte"},
    {"id": "2", "name": "Barba"},
    {"id": "3", "name": "Sobrancelha"},
    {"id": "4", "name": "Maquiagem"},
    {"id": "5", "name": "Unha"},
  ];

  String hourName;
  List hours = [
    {"id": "1", "name": "10:00"},
    {"id": "2", "name": "11:00"},
    {"id": "3", "name": "12:00"},
    {"id": "4", "name": "13:00"},
    {"id": "5", "name": "14:00"},
    {"id": "6", "name": "15:00"}
  ];

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
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 5),
              child: Text("Estabelecimento",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text("Selecione o Estabelecimento"),
                    isExpanded: true,
                    isDense: true,
                    value: organizationName,
                    onChanged: (String newValue) {
                      setState(() {
                        organizationName = newValue;
                        print(newValue);
                      });
                    },
                    items: organizations.map((value) {
                      return DropdownMenuItem<String>(
                        value: value['name'].toString(),
                        child: Text(value['name'].toString()),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 5),
              child: Text("Profissional",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text("Selecione o Pofissional"),
                    isExpanded: true,
                    isDense: true,
                    value: employeName,
                    onChanged: (String newValue) {
                      setState(() {
                        employeName = newValue;
                        print(newValue);
                      });
                    },
                    items: employes.map((value) {
                      return DropdownMenuItem<String>(
                        value: value['id'].toString(),
                        child: Text(value['name'].toString()),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 5),
              child: Text("Serviço",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text("Selecione o Serviço"),
                    isExpanded: true,
                    isDense: true,
                    value: serviceName,
                    onChanged: (String newValue) {
                      setState(() {
                        serviceName = newValue;
                        print(newValue);
                      });
                    },
                    items: services.map((value) {
                      return DropdownMenuItem<String>(
                        value: value['id'].toString(),
                        child: Text(value['name'].toString()),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 5),
              child: Text("Data",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: BasicDateField(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 5),
              child: Text("Hora",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: InputDecorator(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: Text("Selecione o Horário"),
                    isExpanded: true,
                    isDense: true,
                    value: hourName,
                    onChanged: (String newValue) {
                      setState(() {
                        hourName = newValue;
                        print(newValue);
                      });
                    },
                    items: hours.map((value) {
                      return DropdownMenuItem<String>(
                        value: value['id'].toString(),
                        child: Text(value['name'].toString()),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                  child: Container(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "Agendar",
                          style: TextStyle(color: Colors.white, fontSize: 17.0),
                        ),
                        color: Color.fromARGB(255, 55, 142, 22),
                      )),
                ),
              ],
            )
          ],
        ));
  }
}

class BasicDateField extends StatelessWidget {
  final format = DateFormat("dd-MM-yyyy");
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      DateTimeField(
        format: format,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        onShowPicker: (context, currentValue) {
          return showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
        },
      ),
    ]);
  }
}
