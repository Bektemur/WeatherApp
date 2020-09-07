import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class Util {
  static String getFormattedDate(DateTime dateTime) {
    return DateFormat('dd-MM-yyyy').format(dateTime); // Tue, May 5, 2020
  }

  static getItem(IconData iconData, int value, String units) {
    return Column(
      children: <Widget>[
        Icon(iconData, color: Colors.white12, size: 28.0),
        SizedBox(height: 10.0),
        Text(
          '$value',
          style: TextStyle(fontSize: 20.0, color: Colors.teal),
        ),
        SizedBox(height: 10.0),
        Text(
          '$units',
          style: TextStyle(fontSize: 15.0, color: Colors.teal),
        ),
      ],
    );
  }
}

Widget forecastCard(AsyncSnapshot snapshot, int index) {
  var forecastList = snapshot.data.forecasts;
  var dayOfWeek = '';

  var fullDate = forecastList[index].date;
  dayOfWeek = fullDate.split(',')[0]; // Tue
  var tempMin = forecastList[index].tempmin;
  //var icon = WeatherApi.WEATHER_IMAGES_URL + forecastList[index].icon + '.svg';
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            dayOfWeek,
            style: TextStyle(fontSize: 20, color: Colors.limeAccent),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      '$tempMin °C',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  /*SvgPicture.network(
                    icon,
                    height: 80,
                    width: 80,
                    placeholderBuilder: (BuildContext context) =>
                        Container(child: const CircularProgressIndicator()),
                  ),*/
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
