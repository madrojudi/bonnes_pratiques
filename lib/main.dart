import 'package:bonnes_pratiques/labs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFd8074c),
        accentColor: Color(0xFFd8074c),
      ),
      home: BonnesPratiques(),
    );
  }
}

class BonnesPratiques extends StatefulWidget {
  @override
  _BonnesPratiquesState createState() {
    return _BonnesPratiquesState();
  }
}

class _BonnesPratiquesState extends State<BonnesPratiques> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        Container(
          child: Column(
            children: <Widget>[
              Stack(children: <Widget>[
                SizedBox(
                  //Definition de la taille de l'arriere plan
                  height: 200,
                  child: Container(
                    //Couleur de l'arriere plan derriere l'avatar
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(
                  //Conteneur de l'avatar
                  height: 246,
                  child: Stack(children: <Widget>[
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 92,
                        width: 92,
                        child: CircleAvatar(
                          child: Image.asset("assets/images/logo.jpg"),
                        ),
                      ),
                    ),
                  ]),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Judiacel",
                      style: TextStyle(fontSize: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "ZANNOU",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Ing. Systeme d'Information & Reseaux Informations",
                style: TextStyle(color: Colors.black54),
              ),
              FlatButton(
                child: Container(
                  child: Text("Voir atelier"),
                ),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> Labs()));
                },
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: double.infinity,
                          color: Colors.grey[300],
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Loisir",
                            style: TextStyle(fontSize: 16),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.book, color: Theme.of(context).primaryColor,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                                  child: Text("Lecture"),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.movie, color: Theme.of(context).primaryColor),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                                  child: Text("Film"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: double.infinity,
                          color: Colors.grey[300],
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Loisir",
                            style: TextStyle(fontSize: 16),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.book, color: Theme.of(context).primaryColor,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                                  child: Text("Lecture"),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.movie, color: Theme.of(context).primaryColor),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                                  child: Text("Film"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: double.infinity,
                          color: Colors.grey[300],
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Loisir",
                            style: TextStyle(fontSize: 16),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.book, color: Theme.of(context).primaryColor,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                                  child: Text("Lecture"),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.movie, color: Theme.of(context).primaryColor),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                                  child: Text("Film"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),
        )]

      ),
    );
  }
}
