import 'package:WeatherApp/services/services.dart';
import 'package:flutter/material.dart';

import 'WeatherScreen.dart';

class WeatherMain extends StatefulWidget {
  @override
  _WeatherMainState createState() => _WeatherMainState();
}

class _WeatherMainState extends State<WeatherMain> {
  void getLocationData() async {
    var weatherinfo = await WeatherApi().fetchWeather();
    if (weatherinfo == null) {
      print(weatherinfo);
      return;
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(locationWeather: weatherinfo);
    }));
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(''),
      ),
    );
  }
}
