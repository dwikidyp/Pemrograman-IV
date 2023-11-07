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
        title: const Text('Input Widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Write Your Name Here...',
                labelText: 'Your Name',
              ),
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, $_name'),
                      );
                    });
              },
            ),
            Switch(
              value: lightOn,
              onChanged: (bool value) {
                setState(() {
                  lightOn = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(lightOn ? 'Light On' : 'Light Off'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Radio<String>(
                    value: 'Dart',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackbar('dart');
                      });
                    },
                  ),
                  title: Text('Dart'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Kotlin',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackbar('kotlin');
                      });
                    },
                  ),
                  title: Text('Kotlin'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Swift',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackbar('swift');
                      });
                    },
                  ),
                  title: Text('Swift'),
                ),
              ],
            ),
            ListTile(
              leading: Checkbox(
                value: agree,
                onChanged: (bool? value) {
                  setState(() {
                    agree = value!;
                    showSnackbar(agree ? 'Agree' : 'Disagree');
                  });
                },
              ),
              title: Text('Agree / Disagree'),
            ),
          ],
        ),
      ),
    );
  }
}
