class Weather {
  final int humidity;
  final double? pressure;
  final double? st;
  final double visibility;
  final int? windSpeed;
  final int id;
  final String description;
  final double temp;
  final WingDeg? wingDeg;
  final String tempDesc;

  Weather({
    required this.humidity,
    required this.pressure,
    required this.st,
    required this.visibility,
    required this.windSpeed,
    required this.id,
    required this.description,
    required this.temp,
    this.wingDeg,
    required this.tempDesc,
  });
}

enum WingDeg {
  CALMA,
  ESTE,
  NORESTE,
  NOROESTE,
  NORTE,
  OESTE,
  SUDESTE,
  SUDOESTE,
  SUR
}

final wingDegValues = EnumValues({
  "Calma": WingDeg.CALMA,
  "Este": WingDeg.ESTE,
  "Noreste": WingDeg.NORESTE,
  "Noroeste": WingDeg.NOROESTE,
  "Norte": WingDeg.NORTE,
  "Oeste": WingDeg.OESTE,
  "Sudeste": WingDeg.SUDESTE,
  "Sudoeste": WingDeg.SUDOESTE,
  "Sur": WingDeg.SUR
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
