import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(20),
              );
            }),
      ),
    );
  }
}
