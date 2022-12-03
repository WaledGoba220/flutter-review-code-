import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children:  [
          Center(
            child: Text(
              "Hello Containers",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          Container(
            width: 200,
            height: 400,
            color: Colors.yellow,
          ),

          Container(
            width: 200,
            height: 400,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 400,
            color: Colors.black,
          ),
          Container(
            width: 200,
            height: 400,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
