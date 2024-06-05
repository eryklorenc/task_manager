import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class WeatherDataSource {
  Future<Map<String, dynamic>?> getWeatherData(String city) async {
    try {
      final response = await Dio().get<Map<String, dynamic>>(
          'http://api.weatherapi.com/v1/current.json?key=33eabb059fbd42dd93e190429230903&q=$city&aqi=no');
      return response.data;
    } on DioException catch (error) {
      throw Exception(error.response?.data['error']['message'] ?? 'Unknown error');
    }
  }
}
