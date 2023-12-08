import 'package:flutter/material.dart';

class MyInput extends StatefulWidget {
  const MyInput({super.key});

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  String _name = '';
  bool lightOn = false;
  String? language;
  bool agree = false;

  void showSnackbar(String selectedLanguage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Anda Memilih Bahasa: $selectedLanguage'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/ulbi.png', width: 200, height: 200),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Selamat Datang di ULBI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'dibuat oleh:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Dwiki Dzaki Yudi Putra (1214034)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
