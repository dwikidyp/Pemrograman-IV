import 'package:flutter/material.dart';
import 'package:p3_flutter/biggertext.dart';
import 'package:p3_flutter/stateless_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text("Home Page"),
            ),
            ListTile(
              title: Text("About Page"),
            )
          ],
        ),
      ),
      body: const Center(
        child: BiggerText(teks: "Hello ULBI"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting')
        ],
      ),
    );
  }
}
