import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config.dart';

// void main() {
//   final config = AppConfig.dev(); // Use AppConfig.prod() for production
//   runApp(MyApp(config: config));
// }

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _data = "";

  @override
  void initState() {
    super.initState();
    fetchData();
  }

Future<void> fetchData() async {
  final apiUrl = dotenv.env['http://api.openweathermap.org/data/2.5/forecast?id=524901&appid=5c3c1263231d4b9acbfd4ac566255aaf'];
  if (apiUrl != null) {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      setState(() {
        _data = response.body;
      });
    } else {
      throw Exception('Failed to load data');
    }
  } else {
    throw Exception('API_URL is not defined in your .env file.');
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter HTTP Request"),
      ),
      body: Center(
        child: Text(_data),
      ),
    );
  }
}
