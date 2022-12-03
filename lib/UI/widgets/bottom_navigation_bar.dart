import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}


class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        currentIndex: currentIndex,
        backgroundColor: Colors.blue,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "category"),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: "shop"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),

        ],
      ),
    );
  }
}
