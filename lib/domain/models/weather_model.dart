class WeatherModel {
  final double temperature;
  final String city;
  final double wind;
  final int humidity;
  final double feelslike;
  final double pressure;
  final String iconUrl;

  WeatherModel({
    required this.temperature,
    required this.city,
    required this.wind,
    required this.humidity,
    required this.feelslike,
    required this.pressure,
    required this.iconUrl,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      temperature: json['current']['temp_c'],
      city: json['location']['name'],
      wind: json['current']['wind_mph'],
      humidity: json['current']['humidity'],
      feelslike: json['current']['feelslike_c'],
      pressure: json['current']['pressure_in'],
      iconUrl: json['current']['condition']['icon'],
    );
  }
}
