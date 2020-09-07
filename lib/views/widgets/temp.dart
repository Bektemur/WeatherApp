import 'package:flutter/material.dart';
import 'package:WeatherApp/models/Weather.dart';
import 'package:flutter_svg/svg.dart';

class TempView extends StatelessWidget {
  final AsyncSnapshot<Weather> snapshot;
  const TempView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    var temp = snapshot.data.fact.temp;
    var condition = snapshot.data.fact.condition;
    Map<String, String> listCondition = {
      'clear': 'ясно',
      'partly-cloudy': 'малооблачно',
      'cloudy': 'облачно с прояснениями',
      'overcast': 'пасмурно',
      'drizzle': 'морось',
      'light-rain': 'небольшой дождь',
      'rain': 'дождь',
      'moderate-rain': 'умеренно сильный дождь',
      'heavy-rain': 'сильный дождь',
      'continuous-heavy-rain': 'длительный сильный дождь',
      'showers': 'ливень',
      'wet-snow': 'дождь со снегом',
      'light-snow': 'небольшой снег',
      'snow': 'снег',
      'snow-showers': 'снегопад',
      'hail': 'град',
      'thunderstorm': 'гроза',
      'thunderstorm-with-rain': 'дождь с грозой',
      'thunderstorm-with-hail': 'гроза с градом'
    };
    var a = listCondition.keys.where((element) => element == condition).single;
    a = listCondition['$a'];
    var icons = snapshot.data.fact.icon;
    var icon = snapshot.data.fact.getIconUrl() + icons + '.svg';
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          SvgPicture.network(
            icon,
            height: 80,
            width: 80,
            semanticsLabel: condition,
            placeholderBuilder: (BuildContext context) =>
                Container(child: const CircularProgressIndicator()),
          ),
          Column(
            children: <Widget>[
              Text(
                '$temp °C',
                style: TextStyle(
                  fontSize: 54.0,
                  color: Colors.black,
                ),
              ),
              Text('$a'),
            ],
          )
        ],
      ),
    );
  }
}
