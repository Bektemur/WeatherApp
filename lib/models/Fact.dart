import 'package:WeatherApp/services/services.dart';

class Fact {
  dynamic temp;
  dynamic feelsLike;
  String icon;
  String condition;
  dynamic windSpeed;
  double windGust;
  String windDir;
  dynamic pressureMm;
  dynamic pressurePa;
  dynamic humidity;
  dynamic uvIndex;
  dynamic soilTemp;
  double soilMoisture;
  String daytime;
  bool polar;
  String season;
  dynamic obsTime;
  AccumPrec accumPrec;
  String source;
  dynamic cloudness;
  dynamic precType;
  dynamic precStrength;
  bool isThunder;
  String sMode;

  Fact(
      {this.temp,
      this.feelsLike,
      this.icon,
      this.condition,
      this.windSpeed,
      this.windGust,
      this.windDir,
      this.pressureMm,
      this.pressurePa,
      this.humidity,
      this.uvIndex,
      this.soilTemp,
      this.soilMoisture,
      this.daytime,
      this.polar,
      this.season,
      this.obsTime,
      this.accumPrec,
      this.source,
      this.cloudness,
      this.precType,
      this.precStrength,
      this.isThunder,
      this.sMode});

  String getIconUrl() {
    return WeatherApi.WEATHER_IMAGES_URL;
  }

  Fact.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    icon = json['icon'];
    condition = json['condition'];
    windSpeed = json['wind_speed'];
    windGust = json['wind_gust'];
    windDir = json['wind_dir'];
    pressureMm = json['pressure_mm'];
    pressurePa = json['pressure_pa'];
    humidity = json['humidity'];
    uvIndex = json['uv_index'];
    soilTemp = json['soil_temp'];
    soilMoisture = json['soil_moisture'];
    daytime = json['daytime'];
    polar = json['polar'];
    season = json['season'];
    obsTime = json['obs_time'];
    accumPrec = json['accum_prec'] != null
        ? new AccumPrec.fromJson(json['accum_prec'])
        : null;
    source = json['source'];
    cloudness = json['cloudness'];
    precType = json['prec_type'];
    precStrength = json['prec_strength'];
    isThunder = json['is_thunder'];
    sMode = json['_mode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temp'] = this.temp;
    data['feels_like'] = this.feelsLike;
    data['icon'] = this.icon;
    data['condition'] = this.condition;
    data['wind_speed'] = this.windSpeed;
    data['wind_gust'] = this.windGust;
    data['wind_dir'] = this.windDir;
    data['pressure_mm'] = this.pressureMm;
    data['pressure_pa'] = this.pressurePa;
    data['humidity'] = this.humidity;
    data['uv_index'] = this.uvIndex;
    data['soil_temp'] = this.soilTemp;
    data['soil_moisture'] = this.soilMoisture;
    data['daytime'] = this.daytime;
    data['polar'] = this.polar;
    data['season'] = this.season;
    data['obs_time'] = this.obsTime;
    if (this.accumPrec != null) {
      data['accum_prec'] = this.accumPrec.toJson();
    }
    data['source'] = this.source;
    data['cloudness'] = this.cloudness;
    data['prec_type'] = this.precType;
    data['prec_strength'] = this.precStrength;
    data['is_thunder'] = this.isThunder;
    data['_mode'] = this.sMode;
    return data;
  }
}

class AccumPrec {
  double d1;
  double d3;
  double d7;

  AccumPrec({this.d1, this.d3, this.d7});

  AccumPrec.fromJson(Map<String, dynamic> json) {
    d1 = json['1'];
    d3 = json['3'];
    d7 = json['7'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1'] = this.d1;
    data['3'] = this.d3;
    data['7'] = this.d7;
    return data;
  }
}
