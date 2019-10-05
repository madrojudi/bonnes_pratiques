import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Labs extends StatefulWidget {
  @override
  _LabsState createState() => _LabsState();
}

class _LabsState extends State<Labs> {

  List<Lab> labs = [];
  bool isLoad = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLabs();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ateliers"),
      ),
      body: Container(
        child: isLoad ? Center(child: CircularProgressIndicator(),) :
        (labs.isEmpty ? Center(child: Text("Aucun element trouve ou verifiez votre connexion"),) : ListView.builder(itemBuilder: (context, index){
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(image: NetworkImage(labs[index].mediaUrl, scale: 1)),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(labs[index].name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      ),
                      Text(labs[index].postDate),
                    ],
                  ),
                )
              ],
            ),
          );
        },
          itemCount: labs.length,
        ))
      ),
    );
  }

  getLabs() async{
    var url = "https://api.bonnespratiques.artcreativity.io/api/labs";

    try{
      var response = await http.get(url);
      if (response.statusCode == 200) {
        setState(() {
          isLoad = false;
        });
        var jsonResponse = convert.jsonDecode(response.body);
        var  data = jsonResponse['data'];
        for(int i=0; i<data.length; i++){
          var el = data[i];
//        print(el);
          Lab lab = Lab();
          lab.id = el['id'];
          lab.mediaUrl = el['mediaUrl'];
          lab.postDate = el['postDate'];
          lab.name = el['name'];
          setState(() {
            labs.add(lab);
          });
        }
//      Lab lab = Lab();
//      lab.id = jsonResponse['id'];
//      lab.mediaUrl = jsonResponse['mediaUrl'];
//      lab.postDate = jsonResponse['postDate'];
//      lab.name = jsonResponse['name'];

        print("Number of books about http: ${data.length}.");
      } else {
        setState(() {
          isLoad = false;
        });
        print("Request failed with status: ${response.statusCode}.");
      }
    }catch(err){
      setState(() {
        isLoad = false;
      });
    }
    // Await the http get response, then decode the json-formatted responce.

  }
}

class Lab {
  int id;
  String name;
  String mediaUrl;
  String postDate;
}
