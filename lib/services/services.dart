import 'package:WeatherApp/models/Weather.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<Weather> fetchWeather() async {
  final response = await http.get(
    'https://api.weather.yandex.ru/v2/forecast?lat=55.833333&lon=37.616667&lang=ru_RU&limit=7&hours=true&extra=true',
    headers: {
      HttpHeaders.authorizationHeader:
          "X-Yandex-API-Key:94e1b36b-727a-48de-8b3f-75dcde67c54f"
    },
  );
  final responseJson = json.decode(response.body);

  return Weather.fromJson(responseJson);
}
