import 'package:WeatherApp/models/Weather.dart';
import 'package:WeatherApp/services/services.dart';
import 'package:WeatherApp/views/widgets/bottom_list_view.dart';
import 'package:WeatherApp/views/widgets/temp.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  final locationWeather;
  WeatherScreen({this.locationWeather});
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Future<Weather> weather;
  @override
  void initState() {
    super.initState();
    if (widget.locationWeather != null) {
      weather = Future.value(widget.locationWeather);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(Icons.my_location),
            onPressed: () {
              setState(() {
                weather = WeatherApi().fetchWeather();
              });
            }),
        title: Text('Прогноз погоды!'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: FutureBuilder<Weather>(
                future: weather,
                builder: (context, snapshot) {
                  return Column(
                    children: <Widget>[
                      SizedBox(height: 50.0),
                      TempView(snapshot: snapshot),
                      SizedBox(height: 50.0),
                      BottomListView(snapshot: snapshot),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
