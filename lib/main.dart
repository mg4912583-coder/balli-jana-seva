import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/register_page.dart';

void main() {
  runApp(const BalliJanaSevaApp());
}

class BalliJanaSevaApp extends StatelessWidget {
  const BalliJanaSevaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Balli Jana Seva',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const LoginPage(),
      routes: {
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
