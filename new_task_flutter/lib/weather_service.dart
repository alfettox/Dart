import 'package:http/http.dart' as http;
import 'dart:convert';

class WeatherService {
  final String apiKey;
  final String city;

  WeatherService({required this.apiKey, required this.city});

  Future<Map<String, dynamic>> getWeatherData() async {
    final apiUrl =
        Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey');

    final response = await http.get(apiUrl);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
