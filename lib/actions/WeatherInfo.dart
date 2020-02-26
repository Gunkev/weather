import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherInfo {
  // constructor
  WeatherInfo(this.url);
 final String url;

 // get information about current location (temperature, city, weather condition)
 Future getLocationInfo() async {
    http.Response response = await http.get(url);
    // if status code is 200 meaning successful we return the weather data else we print the error code message
    if(response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
        // format weather data to text

      return decodedData;
    }
    else {
      print(response.statusCode);
    }
  }
}