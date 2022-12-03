import 'package:flutter/material.dart';

class ListViewSeparatorScreen extends StatelessWidget {
  const ListViewSeparatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              height: 200,
              color: Colors.green,
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.red,
              thickness: 3,
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
