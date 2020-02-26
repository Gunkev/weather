import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:weathers/actions/WeatherInfoUpdate.dart';
import 'package:weather_icons/weather_icons.dart';


class CurrentLocationScreen extends StatefulWidget {

  //constructor
  CurrentLocationScreen({this.currentLocation});
  final currentLocation;

  @override
  _CurrentLocationScreenState createState() => _CurrentLocationScreenState();
}

class _CurrentLocationScreenState extends State<CurrentLocationScreen> {
  WeatherIconMessage weather = WeatherIconMessage();

  //variables
  String city;
  var weatherCondition;
  var weatherMessage;
  var temperature;
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();

   updateInterfaceInfo(widget.currentLocation);
  }

  // get weather information from weatherInfo.dart and format to show on screen
  void updateInterfaceInfo(dynamic weatherData) {
    setState(() {
      temperature = weatherData['main']['temp'];
      weatherMessage = weather.weatherGetMessage(temperature);
      city = weatherData['name'];
      latitude = weatherData['coord']['lat'];
      longitude = weatherData['coord']['lon'];
      var condition = weatherData['weather'][0]['id'];
      weatherCondition  = weather.weatherGetIcon(condition);
    });
  }
//    weatherCondition = weather.weatherGetIcon(condition);
//
//    latitude = weatherData['coord']['lat'];
//    longitude = weatherData['coord']['lon'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(14.0),
                child: FlatButton(
                  onPressed: () async {
//                    var  weatherData = await weather.getLocationWeather();
//                    updateInterfaceInfo(weatherData);
                  },
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Get Other Location', style: TextStyle(color: Colors.orange, fontSize: 18.0,),textAlign: TextAlign.center,),
                      SizedBox(width: 5.0),
                      Icon(EvaIcons.pin, color: Colors.orange, size: 20.0,),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Icon(weatherCondition, color: Color(0xddffffff), size: 150.0),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                children: <Widget>[
                  Container(
                    child: Icon(EvaIcons.pin, color: Color(0xddffffff), size: 25.0),
                  ),
                  Container(
                    child: Text('$city', style: TextStyle(color: Color(0xddffffff), fontSize: 25.0)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Center(
                    child: Text('$temperature °C', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 60.0),
                    ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              color: Colors.green,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('LATITUDE', style: TextStyle(fontSize: 10.0, color: Color(0xaaffffff))),
                                  Text('$latitude', style: TextStyle(fontSize: 30.0, color: Color(0xaaffffff))),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.black,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('LONGITUDE', style: TextStyle(fontSize: 10.0, color: Color(0xaaffffff))),
                                  Text('$longitude', style: TextStyle(fontSize: 30.0, color: Color(0xaaffffff))),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text('$weatherMessage'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
