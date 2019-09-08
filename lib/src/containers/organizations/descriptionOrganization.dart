import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class DescriptionOrganization extends StatefulWidget {
  @override
  _DescriptionOrganizationState createState() =>
      _DescriptionOrganizationState();
}

class _DescriptionOrganizationState extends State<DescriptionOrganization> {
  @override
  void initState() {
    super.initState();
  }

  var check = true;
  var images = [
    "https://cdn.shoppub.com.br/ferricelli/media/cache/5f/61/5f6161abf1c06070c249b3255ee80b26.jpg",
    "https://cdn.shoppub.com.br/ferricelli/media/cache/63/e6/63e6238b14aef554bdb8c01d366b4bb5.jpg"
  ];
  var lorem =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and.";
  var services = "- Corte \n- Escova \n- Barba";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 64, 106, 1.0),
        centerTitle: true,
        title: Text(
          "Detalhes",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 0.9,
            child: Carousel(
              images: images.map((url) {
                return NetworkImage(url);
              }).toList(),
              dotSize: 5.0,
              dotSpacing: 15.0,
              dotBgColor: Colors.transparent,
              dotColor: Color.fromRGBO(247, 64, 106, 1.0),
              autoplay:
                  false, //Utiliza-se true para rodar as imagens automaticamente dos carrosseis
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Descrição",
                  style: TextStyle(
                      color: Color.fromRGBO(247, 64, 106, 1.0),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  lorem,
                  style: TextStyle(fontSize: 17),
                ),
                Divider(),
                Text(
                  "Serviços Prestados",
                  style: TextStyle(
                      color: Color.fromRGBO(247, 64, 106, 1.0),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  services,
                  style: TextStyle(fontSize: 17),
                ),
                Divider(),
                Text(
                  "Endereço",
                  style: TextStyle(
                      color: Color.fromRGBO(247, 64, 106, 1.0),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Rua: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text("Eliza Verzola Gosuem",
                        style: TextStyle(fontSize: 17)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Número: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "3404",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Baixo: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "Prolongamento Angela Rosa",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Cep: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "14403-734",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            check = !check;
          });
        },
        tooltip: 'Favoritar Estabelecimento',
        child: Icon(
          check == true ? Icons.star : Icons.star_border,
          color: Colors.amber,          
        ),
        backgroundColor: Color.fromRGBO(247, 64, 106, 1.0),
      ),
    );
  }
}
