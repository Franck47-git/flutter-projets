import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'icon_content.dart';
import 'constant.dart';
import 'screen2.dart';

enum Genre {
  female,
  male,
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color maleActiveColor = inactiveColor;
  Color femaleActivecolor = inactiveColor;

  double sliderValue = 150;
  int weight = 90;
  int age = 18;

  void updateColor(Genre selectedGenre) {
    if (selectedGenre == Genre.male) {
      if (maleActiveColor == inactiveColor) {
        maleActiveColor = activeCodeColor;
        femaleActivecolor = inactiveColor;
      } else {
        maleActiveColor = inactiveColor;
      }
    }

    if (selectedGenre == Genre.female) {
      if (femaleActivecolor == inactiveColor) {
        femaleActivecolor = activeCodeColor;
        maleActiveColor = inactiveColor;
      } else {
        femaleActivecolor = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Genre.male);
                      });
                    },
                    child: ReusableCard(
                      coleur: maleActiveColor,
                      childCard: IconSContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Genre.female);
                      });
                    },
                    child: ReusableCard(
                      coleur: femaleActivecolor,
                      childCard: IconSContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMELLE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              coleur: activeCodeColor,
              childCard: Column(
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${sliderValue.toInt()}",
                        style: TextStyle(fontSize: 80, color: Colors.white),
                      ),
                      Text(
                        "Cm",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.pink,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                        min: 100.0,
                        max: 250,
                        value: sliderValue,
                        activeColor: Colors.pink,
                        inactiveColor: Colors.white,
                        onChanged: (double b) {
                          setState(() {
                            sliderValue = b;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    coleur: activeCodeColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(fontSize: 80),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                backgroundColor: Colors.grey,
                                child: Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            SizedBox(
                              width: 15,
                            ),
                            FloatingActionButton(
                                backgroundColor: Colors.grey,
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    coleur: activeCodeColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(fontSize: 80),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                                backgroundColor: Colors.grey,
                                child: Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 15,
                            ),
                            FloatingActionButton(
                                backgroundColor: Colors.grey,
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Color(0xFFFFFFFF),
                                ),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottonBottom(
            bottonTile:  "CALCULER",
            onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Screen1()),
          );
        },
          ),
        ],
      ),
    );
  }
}

class BottonBottom extends StatelessWidget {
  BottonBottom(
    {@required this.onTap, @required this.bottonTile}
  );

  final Function onTap;
  final String bottonTile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      color: bottomContainertColor,
      width: double.infinity,
      height: bottomContainerheight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.pink),
        onPressed: onTap,
        child: Container(
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(bottom: 20),
            child: Center(
                child: Text(
             bottonTile,
              style: textTextStyleFound,
            ))),
      ),
    );
  }
}
