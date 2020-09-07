import 'package:WeatherApp/models/Weather.dart';
import 'package:WeatherApp/views/widgets/forecast_card.dart';
import 'package:flutter/material.dart';

class BottomListView extends StatelessWidget {
  final AsyncSnapshot<Weather> snapshot;
  const BottomListView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(''),
        Container(
          height: 140,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 8),
            itemCount: snapshot.data.forecasts.length,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width / 2.7,
              height: 160,
              color: Colors.black87,
              child: forecastCard(snapshot, index),
            ),
          ),
        ),
      ],
    );
  }
}
