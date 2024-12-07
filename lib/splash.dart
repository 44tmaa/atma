import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the main screen after 5 seconds
    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacementNamed('/main'); // Use named route
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png',width: 100,height: 100, fit: BoxFit.cover),
            const CircularProgressIndicator(),
            const SizedBox(height: 20),
            const Text("Loading..."),
            const Text('Starbhak Mart',  style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}