import 'package:climat_flutter/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool isHide = true;

  @override
  void initState() {
    super.initState();
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    print('construction de la page');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text('gete data'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () async {
                
                setState(() {
                  print('///////// DEPART');
                  print(isHide);

                  isHide = !isHide;
                  print('///////// ARRIVER');
                  print(isHide);
                });

                // var response = await _determinePosition();
                // Navigator.push(context, MaterialPageRoute(builder: (cxt)=> LocationScreen(position: response,)));
              },
            ),
            isHide ? Container() : Icon(Icons.ac_unit_rounded)
          ],
        ),
      ),
    );
  }
}
