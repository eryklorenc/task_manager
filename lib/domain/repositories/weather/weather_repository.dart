import 'package:injectable/injectable.dart';
import 'package:task_manager/data/datasources/weather/weather_datasources.dart';
import 'package:task_manager/domain/models/weather_model.dart';

@injectable
class WeatherRepository {
  final WeatherDataSource _weatherDataSource;

  WeatherRepository(this._weatherDataSource);

  Future<WeatherModel> getWeather(String city) async {
    try {
      final weatherData = await _weatherDataSource.getWeatherData(city);
      return WeatherModel.fromJson(weatherData!);
    } catch (e) {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}
