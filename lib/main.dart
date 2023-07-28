import 'package:flutter/material.dart';
import 'package:shared_preference_exploring/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  final count = sharedPreferences.getInt('increment_value') ?? 0;
  runApp(MyApp(
    count: count,
  ));
}

class MyApp extends StatelessWidget {
  final int count;
  const MyApp({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        count: count,
      ),
      theme: ThemeData.dark(),
    );
  }
}
