import 'dart:convert';
import 'package:climat_flutter/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:climat_flutter/utilities/constants.dart';
import 'package:geolocator/geolocator.dart';

import 'package:http/http.dart' as http;

class LocationScreen extends StatefulWidget {
  final Position position;

  const LocationScreen({Key key, this.position}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  double temp;
  var sentense;
  var city;
  var icon;

  bool loading = false;

  @override
  void initState() {
    super.initState();
    print("Latitude: ${widget.position.latitude}");
    print("Longitude: ${widget.position.longitude}");

    getData();
  }

  getData() async {
    //setState(() {
    loading = true;
    // });
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=${widget.position.latitude}&lon=${widget.position.longitude}&appid=94feb86b81ee456dbc3a54bf0c44d6e3&units=metric#");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      print(response.body);
      temp = data['main']['temp'];
      var condition = temp.toInt();
      sentense = WeatherModel().getMessage(condition);
      icon = WeatherModel().getWeatherIcon(condition);
      city = data['name'];
      //setState(() {
      loading = false;
      //});
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading
          ? Center(child: CircularProgressIndicator())
          : Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/location_background.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.8), BlendMode.dstATop),
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.near_me,
                            size: 50.0,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.location_city,
                            size: 50.0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            temp.toString(),
                            style: kTempTextStyle,
                          ),
                          Text(
                            icon.toString(),
                            style: kConditionTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Text(
                        "$sentense $city!",
                        textAlign: TextAlign.right,
                        style: kMessageTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
