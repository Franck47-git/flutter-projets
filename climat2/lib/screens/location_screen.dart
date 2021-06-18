import 'dart:convert';
import 'package:climat2/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:climat2/utilities/constants.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class LocationScreen extends StatefulWidget {
  final Position position;

  const LocationScreen({Key key, this.position}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  bool loading = false;
  double temp;
  var city;
  var phrase;
  var icon;

  @override
  void initState() {
    super.initState();
    getNetworkData(widget.position.latitude, widget.position.longitude);
  }

  getNetworkData(double lat, double lon) async {
    setState(() {
      loading = true;
    });
    var url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=e7a9e30aa70ad4da4f1c4505c1409e99&units=metric#');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        loading = false;
        var data = jsonDecode(response.body);
        temp = data["main"]["temp"];
        city = data["name"];
        var condition = temp.toInt();
        phrase = WeatherModel().getMessage(condition);
        icon = WeatherModel().getWeatherIcon(condition);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading ?
      Center(child: CircularProgressIndicator(),)
      :Container(
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
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  TextButton(
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
                      "${temp.toInt().toString()}°",
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
                  "$phrase $city!",
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
