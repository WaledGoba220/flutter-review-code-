import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatelessWidget {
  const GridViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 50,
            ),
            itemBuilder: (context, index){
              return Container(
                // margin: EdgeInsets.all(15),
                width: 100,
                height: 200,
                color: Colors.pink,
              );
        },
          itemCount: 4,
        ),
      ),
    );
  }
}
