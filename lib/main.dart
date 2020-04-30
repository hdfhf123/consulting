import 'package:consulting/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(ConsultingApp());
class ConsultingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF001E36),
      statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF001E36),
        //primarySwatch:  Color(0xFF8D7EF0),

      ),
      debugShowCheckedModeBanner: false,
      home: SplashClass(),
    );
  }
}

