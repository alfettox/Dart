class AppConfig {
  final String apiUrl;

  AppConfig({required this.apiUrl});

  factory AppConfig.dev() {
    return AppConfig(apiUrl: 'http://api.openweathermap.org/data/2.5/forecast?'); 
  }

  factory AppConfig.prod() {
    return AppConfig(apiUrl: 'http://api.openweathermap.org/data/2.5/forecast?');
  }
}
