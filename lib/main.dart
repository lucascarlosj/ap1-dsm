import 'package:ap1_dsm/app/pages/home/home_page.dart';
import 'package:ap1_dsm/app/pages/login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {'/home': (_) => const HomePage()},
      home: const LoginPage(),
    );
  }
}
