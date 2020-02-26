import 'package:weathers/actions/Location.dart';
import 'package:weathers/actions/WeatherInfo.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherIconMessage {

  var weatherIcon;

  // update icon base on weather information
  weatherGetIcon(int condition) {
    if(condition < 300) {
      return weatherIcon = WeatherIcons.day_cloudy;
    } else if(condition < 400) {
      return weatherIcon = WeatherIcons.raindrops;
    } else if(condition < 500) {
      return weatherIcon = WeatherIcons.day_rain;
    } else if(condition < 600) {
      return weatherIcon = WeatherIcons.rain;
    } else if(condition < 700) {
      return weatherIcon = WeatherIcons.snow_wind;
    } else if(condition == 800) {
      return weatherIcon = WeatherIcons.day_sunny;
    } else if(condition <= 804) {
      return weatherIcon = Icons.cloud;
    }
  }

  //update message base on weather information gotten
  weatherGetMessage(int temperature) {
    if(temperature > 25) {
      return 'Consume cool things to keep your body temperature';
    } else if(temperature > 20) {
      return 'Wear light white short and shirt';
    } else if(temperature < 10) {
      return 'Move along with long sleeves, an umbrella and a pullover';
    } else {
      return 'come along with an umbrella, sleeves, and hat in case';
    }
  }
}



