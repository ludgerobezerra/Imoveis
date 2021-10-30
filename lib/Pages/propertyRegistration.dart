import 'package:flutter/material.dart';

class PropertyRegistration extends StatefulWidget {
  const PropertyRegistration({Key? key}) : super(key: key);

  @override
  _PropertyRegistrationState createState() => _PropertyRegistrationState();
}

class _PropertyRegistrationState extends State<PropertyRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade600,
        centerTitle: true,
        title: Text("Cadastro de Propriedade"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.check_box_outline_blank),
                                  Text(
                                    "Alugar",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.check_box_outline_blank),
                                  Text(
                                    "Vender",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20, right: 20),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: 'Valor'),
                        keyboardType: TextInputType.number,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          children: [
                            Text(
                              "Detalhes da Propriedade",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Descrição'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Area Construida'),
                        keyboardType: TextInputType.number,
                      ),
                      TextField(
                        decoration:
                        InputDecoration(labelText: 'Quantidade de Quartos'),
                        keyboardType: TextInputType.number,
                      ),
                      TextField(
                        decoration:
                        InputDecoration(labelText: 'Quantidade de Banheiros'),
                        keyboardType: TextInputType.number,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Vaga de garagem'),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20, right: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            "Endereço",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Rua'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Número'),
                        keyboardType: TextInputType.number,
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Bairro'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Cidade'),

                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Inserir Fotos:",style: TextStyle(fontSize: 18),),
                          Icon(Icons.photo_camera_outlined,size: 30,),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child:
                ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {},
                  child: Text("Cadastrar"),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
