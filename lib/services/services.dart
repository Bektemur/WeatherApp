import 'dart:developer';
import 'dart:convert';
import 'package:WeatherApp/models/Weather.dart';
import 'package:WeatherApp/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class WeatherApi {
  var responseJson;
  static const String WEATHER_IMAGES_URL =
      'https://yastatic.net/weather/i/icons/blueye/color/svg/';
  Future<Weather> fetchWeather({double lon, double lat}) async {
    Location location = Location();
    await location.getCurrentLocation().timeout(Duration(seconds: 15));
    var queryParametrs = {
      'lon': location.longitude.toString(),
      'lat': location.latitude.toString(),
      'lang': 'ru_RU',
      'limit': '7',
      'hours': 'true',
      'extra': 'true'
    };
    var url = '/v2/forecast';
    var uri = Uri.http('api.weather.yandex.ru', url, queryParametrs);
    log('request ${uri.toString()}');
    final response = await http.get(
      uri,
      headers: {"X-Yandex-API-Key": "94e1b36b-727a-48de-8b3f-75dcde67c54f"},
    );
    responseJson = response.body;
    if (response.statusCode == 200) {
      return Weather.fromJson(json.decode(responseJson));
    } else {
      throw Exception("Error request ${response.statusCode.toString()}");
    }
  }
}
