import 'package:agenda_mais_app/src/containers/organizations/descriptionOrganization.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Organization extends StatefulWidget {
  @override
  _OrganizationState createState() => _OrganizationState();
}

class _OrganizationState extends State<Organization> {

  List response;
  bool load = false;

  Future<Map> _getOrganizations() async {
    http.Response response;
    response = await http
        .get("http://www.mocky.io/v2/5d8170643000009120699692");

    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();

    _getOrganizations().then((res) {
      setState(() {
        response = res["data"];
        load = true;
      });
    });
  }


  var check = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(247, 64, 106, 1.0),
          centerTitle: true,
          title: Text(
            "Estabelecimentos",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: <Widget>[
            load == true
                ? Expanded(
                    child: ListView.builder(
                        padding:
                            EdgeInsets.only(top: 10.0, left: 10, right: 10),
                        itemCount: response.length,
                        itemBuilder: (context, index) {
                          return _organizationCard(context, index, response);
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
        ));
  }

  Widget _organizationCard(BuildContext context, int index, List response) {

    return InkWell(
      onTap: () async {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DescriptionOrganization(response[index])));
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
                    image: DecorationImage(image: NetworkImage(response[index]["principalImage"]))),
              ),
              Flexible(
                flex: 1,
                  child: Padding(
                padding: EdgeInsets.only(left: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(bottom: 7),
                      child: Text(
                        "${response[index]["name"]}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),

                    fieldsOrganization("Ramo", "${response[index]["ramo"]}"),
                  ],
                ),
              )),
              IconButton(
                icon: Icon(
                  response[index]["favorites"] == true ? Icons.star : Icons.star_border,
                  size: 32,
                  color: Colors.amber,
                ),
                onPressed: () {
                  setState(() {
                    check = !check;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget fieldsOrganization(String title, String value) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Text(
            "${title}: ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Flexible(
          child: Text("${value}"),
        )

      ],
    );
  }
}
