import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var valueFound;
  var valueFound2;
  bool genre = false;
  double poids;
  double currentDate;
  double age;
  double taille = 170.0;
  var radioselectionne;

  List datas = [
    {
      "id": 1,
      "question": " Quelle est la capitale économique de la côte d'ivoire ?",
      "rep": [
        {
          "response": "Abidjan",
          "status": true,
        },
        {
          "response": "bouaké",
          "status": false,
        },
      ]
    },
    {
      "id": 2,
      "question":
          " Qui a remporté les élections présidentielle de 2020 en côte d'ivoire ?",
      "rep": [
        {
          "response": "Alassane Ouattara",
          "status": true,
        },
        {
          "response": "Bedié",
          "status": false,
        }
      ]
    },
    {
      "id": 3,
      "question": " Quel language utilise flutter?",
      "rep": [
        {
          "response": "dart",
          "status": true,
        },
        {
          "response": "javaScript",
          "status": false,
        }
      ]
    }
  ];

  Map maMap = {0: "Faible", 1: "Moderé", 2: "Eléver"};

  List<Widget> radio() {
    List<Widget> l = [];

    datas.forEach((element) {
      Column row = Column(
        children: [
          Text(
            "Q N° ${element["id"]} ",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "${element["question"]}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.grey[900]),
          ),

          Row(
            children: [
              Row(
                children: [
                  Radio(
                      value: element["rep"][0],
                      groupValue: valueFound,
                      onChanged: (r) {
                        print("nwe change $r");
                        setState(() {
                          valueFound = r;
                        });
                      }),
                  Text(
                    element["rep"][0]["response"],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: element["rep"][1],
                      groupValue: valueFound2,
                      onChanged: (l) {
                        setState(() {
                          valueFound2 = l;
                        });
                      }),
                  Text(
                    element["rep"][1]["response"],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          //Text("Note",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.red[800])),
        ],
      );

      l.add(row);
    });
    return l;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => FocusScope.of(context).requestFocus(FocusNode())),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: setColor(),
          title: Text("Calorie calculator"),
          centerTitle: true,
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          testStylefonction(
              "Remplissez les champs pour obtenir votre besion journalier en calorie"),
          Card(
            elevation: 10.5,
            child: Column(
              children: [
                padding(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    testStylefonction("Femme",
                        color: Colors.deepOrangeAccent[200]),
                    Switch(
                        value: genre,
                        activeTrackColor: Colors.blue,
                        inactiveTrackColor: Colors.deepOrangeAccent[200],
                        onChanged: (b) {
                          setState(() {
                            genre = b;
                          });
                        }),
                    testStylefonction("Homme", color: Colors.blue)
                  ],
                ),
                 padding(),
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: setColor(),
                  ),
                  child: testStylefonction(
                      (age == null)
                          ? "Appuyez pour entrer votre age"
                          : "votre age est ${age.toInt()}",
                      color: Colors.white),
                  onPressed: () {
                    showMeDate();
                  },
                ),
                 padding(),
                Slider(
                    activeColor: setColor(),
                    max: 255.0,
                    min: 100.0,
                    value: taille,
                    onChanged: (double fer) {
                      setState(() {
                        taille = fer;
                      });
                    }),
               padding(),
                testStylefonction("Votre taille est ${taille.toInt()} cm",
                    color: setColor()),
                padding(),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (String string) {
                    poids = double.tryParse(string);
                  },
                  decoration:
                      InputDecoration(labelText: "Entrer votre poids en kg"),
                ),
                
                padding(),
               testStylefonction("Quelle est votre activité sportive ?", color: setColor()),
               rowRadios(),
                
                 padding(),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Color setColor() {
    if (genre) {
      return Colors.blue;
    } else {
      return Colors.deepOrangeAccent[200];
    }
  }

  Text testStylefonction(
    String data, {
    color: Colors.black,
    fontSize: 15.5,
  }) {
    return Text(
      data,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    );
  }

  Future<Null> showMeDate() async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
        initialDatePickerMode: DatePickerMode.year);

    if (pickedDate != null) {
      var difference = DateTime.now().difference(pickedDate);
      var jours = difference.inDays;
      var ans = (jours / 365);
      setState(() {
        age = ans;
      });
    }
  }

  Padding padding() {
    return Padding(padding: EdgeInsets.only(top: 20));
  }

  Row rowRadios() {
     List<Widget> l = [];

    maMap.forEach((key, value) {
      Column colon = Column(
        children: [
          Radio(
              activeColor: setColor(),
              value: value,
              groupValue: radioselectionne,
              onChanged: (Object t) {
                setState(() {
                  radioselectionne = t;
                });
              }),
          testStylefonction(value, color: setColor()),
        ],
      );
      l.add(colon);
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: l,
    );
  }
}
