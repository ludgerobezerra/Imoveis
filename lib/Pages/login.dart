import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPassword = false;
  String telefone = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          height: double.infinity,
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/image/wallpapers.jpg",
              ),
            ),
          ),

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 150),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/image/soon.png",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "  WhatsApp",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          onChanged: (String texto){
                            setState(() {
                              telefone = texto;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "+55 (99) 9 9999 - 9999",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "  Senha",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: showPassword ? true : false,
                          onChanged: (String texto){
                            setState(() {
                              password = texto;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: "Password",
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  showPassword = !showPassword;
                                });
                              },
                              icon: Icon(
                                showPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    telefone.isEmpty || password.isEmpty
                                        ? Colors.grey
                                        : Colors.blue,
                                  ),
                                ),
                                onPressed: telefone.isEmpty || password.isEmpty
                                    ? null
                                    : () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => Home(),));

                                },
                                child: Text("Entrar"),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                style: ButtonStyle(),
                                onPressed: () {},
                                child: Text("Cadastre-se"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
