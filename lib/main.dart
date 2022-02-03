import 'package:flutter/material.dart';
import './utils/colors.dart';
import 'whatsapp_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData.dark().copyWith(
          floatingActionButtonTheme:
              const FloatingActionButtonThemeData(backgroundColor: tealGreen)),
      home: const WhatsAppHome(),
    );
  }
}
