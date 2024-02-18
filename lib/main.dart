import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app/pages/home_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: "Volkwagen",
      theme: ThemeData.dark(),
      home: const HomePageCar(),
      debugShowCheckedModeBanner: false,
    );
  }
}


