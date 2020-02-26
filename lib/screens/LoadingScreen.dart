import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weathers/actions/Location.dart';
import 'package:weathers/actions/WeatherInfo.dart';
import 'package:weathers/screens/CurrentLocationScreen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const weatherApi = '291b643021b3ce6c8b4af2411c37313b';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}


class _LoadingScreenState extends State<LoadingScreen> {
  var latitude;
  var longitude;
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = new Location();

    await location.getCurrentLocation();

    latitude = location.latitude;
    longitude = location.longitude;

    WeatherInfo weatherInfo =
    WeatherInfo('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$weatherApi&units=metric');
    var weatherData = await weatherInfo.getLocationInfo();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return CurrentLocationScreen(
        currentLocation: weatherData,
      );
    }));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.cloud, color: Colors.white, size: 80.0),
            Text('Weather and Climate'),
            SpinKitWave(
              color: Colors.white,
              size: 15.0,
            )
          ],
        ),
      ),
    );
  }
}
