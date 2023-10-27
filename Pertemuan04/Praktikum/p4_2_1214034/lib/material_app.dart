import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.red,
            padding:
                const EdgeInsets.symmetric(horizontal: 160.0, vertical: 50.0),
            child: const Text(
              'Box 1',
              style: TextStyle(
                fontSize: 21.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.green,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 100.0),
                  child: const Text(
                    'Box 2',
                    style: TextStyle(
                      fontSize: 21.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 100.0),
                  child: const Text(
                    'Box 3',
                    style: TextStyle(
                      fontSize: 21.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
