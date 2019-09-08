import 'package:agenda_mais_app/src/containers/organizations/descriptionOrganization.dart';
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

  var check = true;
  @override
  Widget build(BuildContext context) {
    bool load = true;
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
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return _organizationCard(context, index);
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

  Widget _organizationCard(BuildContext context, int index) {
    var imageUrl =
        "https://casaefesta.com/wp-content/uploads/2015/02/decoracao-de-salao-de-beleza-tudo-o-que-voce-precisa-saber-58.jpg";
    return InkWell(
      onTap: () async {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DescriptionOrganization()));
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    fieldsOrganization("Ramo", "Cabelo"),
                  ],
                ),
              )),
              IconButton(
                icon: Icon(
                  check == true ? Icons.star : Icons.star_border,
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
        Text(
          "${title}: ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("${value}"),
      ],
    );
  }
}
