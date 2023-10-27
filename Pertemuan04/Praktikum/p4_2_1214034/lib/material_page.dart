import 'package:flutter/material.dart';
import 'package:p4_2_1214034/material_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas Pertemuan 4"),
        backgroundColor: Colors.green,
      ),
      body: const MyBox(),
    );
  }
}
