import 'Fact.dart';
import 'Info.dart';
import 'Forecast.dart';

class Weather {
  int now;
  String nowDt;
  Info info;
  Fact fact;
  List<Forecasts> forecasts;

  Weather({this.now, this.nowDt, this.info, this.fact, this.forecasts});

  Weather.fromJson(Map<String, dynamic> json) {
    now = json['now'];
    nowDt = json['now_dt'];
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
    fact = json['fact'] != null ? new Fact.fromJson(json['fact']) : null;
    if (json['forecasts'] != null) {
      forecasts = new List<Forecasts>();
      json['forecasts'].forEach((v) {
        forecasts.add(new Forecasts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['now'] = this.now;
    data['now_dt'] = this.nowDt;
    if (this.info != null) {
      data['info'] = this.info.toJson();
    }
    if (this.fact != null) {
      data['fact'] = this.fact.toJson();
    }
    if (this.forecasts != null) {
      data['forecasts'] = this.forecasts.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
