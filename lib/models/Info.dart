import 'Tzinfo.dart';

class Info {
  bool f;
  bool n;
  bool nr;
  bool ns;
  bool nsr;
  bool p;
  double lat;
  double lon;
  Tzinfo tzinfo;
  int defPressureMm;
  int defPressurePa;
  bool bH;
  String url;

  Info(
      {this.f,
      this.n,
      this.nr,
      this.ns,
      this.nsr,
      this.p,
      this.lat,
      this.lon,
      this.tzinfo,
      this.defPressureMm,
      this.defPressurePa,
      this.bH,
      this.url});

  Info.fromJson(Map<String, dynamic> json) {
    f = json['f'];
    n = json['n'];
    nr = json['nr'];
    ns = json['ns'];
    nsr = json['nsr'];
    p = json['p'];
    lat = json['lat'];
    lon = json['lon'];
    tzinfo =
        json['tzinfo'] != null ? new Tzinfo.fromJson(json['tzinfo']) : null;
    defPressureMm = json['def_pressure_mm'];
    defPressurePa = json['def_pressure_pa'];
    bH = json['_h'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['f'] = this.f;
    data['n'] = this.n;
    data['nr'] = this.nr;
    data['ns'] = this.ns;
    data['nsr'] = this.nsr;
    data['p'] = this.p;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    if (this.tzinfo != null) {
      data['tzinfo'] = this.tzinfo.toJson();
    }
    data['def_pressure_mm'] = this.defPressureMm;
    data['def_pressure_pa'] = this.defPressurePa;
    data['_h'] = this.bH;
    data['url'] = this.url;
    return data;
  }
}
