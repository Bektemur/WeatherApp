import 'package:WeatherApp/services/services.dart';

class Forecasts {
  String date;
  dynamic dateTs;
  dynamic week;
  String sunrise;
  String sunset;
  String riseBegin;
  String setEnd;
  dynamic moonCode;
  String moonText;
  Parts parts;
  dynamic tempmin;
  List<Hours> hours;

  Forecasts(
      {this.date,
      this.dateTs,
      this.week,
      this.sunrise,
      this.sunset,
      this.riseBegin,
      this.setEnd,
      this.moonCode,
      this.moonText,
      this.parts,
      this.hours,
      this.tempmin});

  Forecasts.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    dateTs = json['date_ts'];
    week = json['week'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    riseBegin = json['rise_begin'];
    setEnd = json['set_end'];
    moonCode = json['moon_code'];
    moonText = json['moon_text'];
    tempmin = json['temp_min'];
    parts = json['parts'] != null ? new Parts.fromJson(json['parts']) : null;
    if (json['hours'] != null) {
      hours = new List<Hours>();
      json['hours'].forEach((v) {
        hours.add(new Hours.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['date_ts'] = this.dateTs;
    data['week'] = this.week;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['rise_begin'] = this.riseBegin;
    data['set_end'] = this.setEnd;
    data['moon_code'] = this.moonCode;
    data['moon_text'] = this.moonText;
    data['temp_min'] = this.tempmin;
    if (this.parts != null) {
      data['parts'] = this.parts.toJson();
    }
    if (this.hours != null) {
      data['hours'] = this.hours.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

String getIconUrl() {
  return WeatherApi.WEATHER_IMAGES_URL;
}

class Parts {
  Night night;
  Night morning;
  Night day;
  Night evening;
  DayShort dayShort;
  NightShort nightShort;

  Parts(
      {this.night,
      this.morning,
      this.day,
      this.evening,
      this.dayShort,
      this.nightShort});

  Parts.fromJson(Map<String, dynamic> json) {
    night = json['night'] != null ? new Night.fromJson(json['night']) : null;
    morning =
        json['morning'] != null ? new Night.fromJson(json['morning']) : null;
    day = json['day'] != null ? new Night.fromJson(json['day']) : null;
    evening =
        json['evening'] != null ? new Night.fromJson(json['evening']) : null;
    dayShort = json['day_short'] != null
        ? new DayShort.fromJson(json['day_short'])
        : null;
    nightShort = json['night_short'] != null
        ? new NightShort.fromJson(json['night_short'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.night != null) {
      data['night'] = this.night.toJson();
    }
    if (this.morning != null) {
      data['morning'] = this.morning.toJson();
    }
    if (this.day != null) {
      data['day'] = this.day.toJson();
    }
    if (this.evening != null) {
      data['evening'] = this.evening.toJson();
    }
    if (this.dayShort != null) {
      data['day_short'] = this.dayShort.toJson();
    }
    if (this.nightShort != null) {
      data['night_short'] = this.nightShort.toJson();
    }
    return data;
  }
}

class Night {
  String sSource;
  dynamic tempMin;
  dynamic tempMax;
  dynamic tempAvg;
  dynamic feelsLike;
  String icon;
  String condition;
  String daytime;
  bool polar;
  dynamic windGust;
  String windDir;
  dynamic pressureMm;
  dynamic pressurePa;
  dynamic humidity;
  dynamic uvIndex;
  dynamic soilTemp;
  dynamic soilMoisture;
  dynamic precMm;
  dynamic precPeriod;
  dynamic precProb;
  dynamic precType;
  dynamic precStrength;
  dynamic cloudness;

  Night(
      {this.sSource,
      this.tempMin,
      this.tempMax,
      this.tempAvg,
      this.feelsLike,
      this.icon,
      this.condition,
      this.daytime,
      this.polar,
      this.windGust,
      this.windDir,
      this.pressureMm,
      this.pressurePa,
      this.humidity,
      this.uvIndex,
      this.soilTemp,
      this.soilMoisture,
      this.precMm,
      this.precPeriod,
      this.precProb,
      this.precType,
      this.precStrength,
      this.cloudness});

  Night.fromJson(Map<String, dynamic> json) {
    sSource = json['_source'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    tempAvg = json['temp_avg'];
    feelsLike = json['feels_like'];
    icon = json['icon'];
    condition = json['condition'];
    daytime = json['daytime'];
    polar = json['polar'];
    windGust = json['wind_gust'];
    windDir = json['wind_dir'];
    pressureMm = json['pressure_mm'];
    pressurePa = json['pressure_pa'];
    humidity = json['humidity'];
    uvIndex = json['uv_index'];
    soilTemp = json['soil_temp'];
    soilMoisture = json['soil_moisture'];
    precMm = json['prec_mm'];
    precPeriod = json['prec_period'];
    precProb = json['prec_prob'];
    precType = json['prec_type'];
    precStrength = json['prec_strength'];
    cloudness = json['cloudness'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_source'] = this.sSource;
    data['temp_min'] = this.tempMin;
    data['temp_max'] = this.tempMax;
    data['temp_avg'] = this.tempAvg;
    data['feels_like'] = this.feelsLike;
    data['icon'] = this.icon;
    data['condition'] = this.condition;
    data['daytime'] = this.daytime;
    data['polar'] = this.polar;
    data['wind_gust'] = this.windGust;
    data['wind_dir'] = this.windDir;
    data['pressure_mm'] = this.pressureMm;
    data['pressure_pa'] = this.pressurePa;
    data['humidity'] = this.humidity;
    data['uv_index'] = this.uvIndex;
    data['soil_temp'] = this.soilTemp;
    data['soil_moisture'] = this.soilMoisture;
    data['prec_mm'] = this.precMm;
    data['prec_period'] = this.precPeriod;
    data['prec_prob'] = this.precProb;
    data['prec_type'] = this.precType;
    data['prec_strength'] = this.precStrength;
    data['cloudness'] = this.cloudness;
    return data;
  }
}

class DayShort {
  String sSource;
  dynamic temp;
  dynamic tempMin;
  dynamic feelsLike;
  String icon;
  String condition;
  dynamic windSpeed;
  dynamic windGust;
  String windDir;
  dynamic pressureMm;
  dynamic pressurePa;
  dynamic humidity;
  dynamic uvIndex;
  dynamic soilTemp;
  dynamic soilMoisture;
  dynamic precMm;
  dynamic precProb;
  dynamic precType;
  dynamic precStrength;
  dynamic cloudness;

  DayShort(
      {this.sSource,
      this.temp,
      this.tempMin,
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
      this.precMm,
      this.precProb,
      this.precType,
      this.precStrength,
      this.cloudness});

  DayShort.fromJson(Map<String, dynamic> json) {
    sSource = json['_source'];
    temp = json['temp'];
    tempMin = json['temp_min'];
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
    precMm = json['prec_mm'];
    precProb = json['prec_prob'];
    precType = json['prec_type'];
    precStrength = json['prec_strength'];
    cloudness = json['cloudness'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_source'] = this.sSource;
    data['temp'] = this.temp;
    data['temp_min'] = this.tempMin;
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
    data['prec_mm'] = this.precMm;
    data['prec_prob'] = this.precProb;
    data['prec_type'] = this.precType;
    data['prec_strength'] = this.precStrength;
    data['cloudness'] = this.cloudness;
    return data;
  }
}

class NightShort {
  dynamic temp;
  dynamic feelsLike;
  String icon;
  String condition;
  dynamic windSpeed;
  dynamic windGust;
  String windDir;
  dynamic pressureMm;
  dynamic pressurePa;
  dynamic humidity;
  dynamic uvIndex;
  dynamic soilTemp;
  dynamic soilMoisture;
  dynamic precMm;
  dynamic precProb;
  dynamic precType;
  dynamic precStrength;
  dynamic cloudness;

  NightShort(
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
      this.precMm,
      this.precProb,
      this.precType,
      this.precStrength,
      this.cloudness});

  NightShort.fromJson(Map<String, dynamic> json) {
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
    precMm = json['prec_mm'];
    precProb = json['prec_prob'];
    precType = json['prec_type'];
    precStrength = json['prec_strength'];
    cloudness = json['cloudness'];
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
    data['prec_mm'] = this.precMm;
    data['prec_prob'] = this.precProb;
    data['prec_type'] = this.precType;
    data['prec_strength'] = this.precStrength;
    data['cloudness'] = this.cloudness;
    return data;
  }
}

class Hours {
  String hour;
  dynamic hourTs;
  dynamic temp;
  dynamic feelsLike;
  String icon;
  String condition;
  dynamic windSpeed;
  dynamic windGust;
  String windDir;
  dynamic pressureMm;
  dynamic pressurePa;
  dynamic humidity;
  dynamic uvIndex;
  dynamic soilTemp;
  dynamic soilMoisture;
  dynamic precMm;
  dynamic precPeriod;
  dynamic precProb;
  dynamic cloudness;
  dynamic precType;
  dynamic precStrength;
  bool isThunder;
  bool bNowcast;

  Hours(
      {this.hour,
      this.hourTs,
      this.temp,
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
      this.precMm,
      this.precPeriod,
      this.precProb,
      this.cloudness,
      this.precType,
      this.precStrength,
      this.isThunder,
      this.bNowcast});

  Hours.fromJson(Map<String, dynamic> json) {
    hour = json['hour'];
    hourTs = json['hour_ts'];
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
    precMm = json['prec_mm'];
    precPeriod = json['prec_period'];
    precProb = json['prec_prob'];
    cloudness = json['cloudness'];
    precType = json['prec_type'];
    precStrength = json['prec_strength'];
    isThunder = json['is_thunder'];
    bNowcast = json['_nowcast'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hour'] = this.hour;
    data['hour_ts'] = this.hourTs;
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
    data['prec_mm'] = this.precMm;
    data['prec_period'] = this.precPeriod;
    data['prec_prob'] = this.precProb;
    data['cloudness'] = this.cloudness;
    data['prec_type'] = this.precType;
    data['prec_strength'] = this.precStrength;
    data['is_thunder'] = this.isThunder;
    data['_nowcast'] = this.bNowcast;
    return data;
  }
}
