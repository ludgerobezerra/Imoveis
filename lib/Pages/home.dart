import 'package:flutter/material.dart';
import 'package:imoveis/Pages/login.dart';
import 'package:imoveis/Pages/propertyRegistration.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.purple.shade600,
                  ),
                  currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/image/perfil.jpg"),
                  ),
                  accountName: Text(
                    "Ludgero Bezerra",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text(
                    "+ 55 83 9 9192-0502",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Sair",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                          IconButton(
                            icon: Icon(
                              Icons.logout,
                              //color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.purple.shade600,
          centerTitle: true,
          title: Image.asset(
            "assets/image/soon.png",
            scale: 10,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add_circle_outline_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PropertyRegistration(),
                  ),
                );
              },
            ),
          ],
          bottom: tabbarconstruct(),
        ),
        body: appbarviwerconstruct(),
      ),
    );
  }
}

PreferredSizeWidget tabbarconstruct() {
  return const TabBar(
    tabs: <Widget>[
      Tab(
        child: Text(
          "Venda",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          "Aluguel",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          "Meus Imóveis",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      Tab(
        child: Text(
          "Contato",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

Widget appbarviwerconstruct() {
  return TabBarView(
    children: <Widget>[
      Center(
        child: ListView(
          children: [
            Column(
              children: [
                classified(
                    "Casa",
                    "assets/image/casa.jpg",
                    "Cajazeiras - PB",
                    "Em Cajazeiras, Casa com 03 quartos,sendo um suite, sala, cozinha,...",
                    "200",
                    "3",
                    "2",
                    "2",
                    "Disponivel"),
              ],
            ),
          ],
        ),
      ),
      Center(
        child: ListView(
          children: [
            Column(
              children: [
                classified(
                    "Apartamento",
                    "assets/image/apartamento.jpg",
                    "Cajazeiras - PB",
                    "Apartamento com 2 quartos e 1 suite, sala e cozinha americana...",
                    "120",
                    "2",
                    "2",
                    "1",
                    "Disponivel"),
              ],
            ),
          ],
        ),
      ),
      Center(
        child: ListView(
          children: [
            Column(
              children: [
                classified(
                    "Apartamento",
                    "assets/image/apartamento.jpg",
                    "Cajazeiras - PB",
                    "Apartamento com 2 quartos e 1 suite, sala e cozinha americana...",
                    "120",
                    "2",
                    "2",
                    "1",
                    "Disponivel"),
              ],
            ),
          ],
        ),
      ),
      Center(
        child: Text("Contate-nos 83 9 9192-0502"),
      ),
    ],
  );
}

Widget classified(String title, String image, String city, String description,
    String square, String bed, String shower, String garage, String status) {
  return Container(
    margin: EdgeInsets.only(top: 20, right: 10),
    decoration: BoxDecoration(
        color: Colors.grey.shade300,
        //image: DecorationImage("assets/image/casa.jpg"),
        borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
        boxShadow: [
          BoxShadow(blurRadius: 2),
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            title,
            style: TextStyle(
                //color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
                  child: Image.asset(
                    image,
                    scale: 5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                  ),
                  child: Text(
                    city,
                    style: TextStyle(
                        //color: Colors.black26,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    status,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          color: Colors.purple.shade300,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.square_foot,
                    color: Colors.white,
                  ),
                  Text(
                    square + "m",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.bed,
                    color: Colors.white,
                  ),
                  Text(
                    bed + " dorm.",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.shower,
                    color: Colors.white,
                  ),
                  Text(
                    shower + " banh.",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.garage,
                    color: Colors.white,
                  ),
                  Text(
                    garage + " vaga.",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
