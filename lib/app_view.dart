import 'package:despesas_app/screens/views/home_screen.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Despesas",
      theme: ThemeData(
       colorScheme: ColorScheme.light(
          primary: Color(0xFF00B2E7),
          secondary: Color(0xFFE064F7),
          tertiary: Color(0xFFFF8D6C),
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}