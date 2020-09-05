class Tzinfo {
  String name;
  String abbr;
  int offset;
  bool dst;

  Tzinfo({this.name, this.abbr, this.offset, this.dst});

  Tzinfo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    abbr = json['abbr'];
    offset = json['offset'];
    dst = json['dst'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['abbr'] = this.abbr;
    data['offset'] = this.offset;
    data['dst'] = this.dst;
    return data;
  }
}
