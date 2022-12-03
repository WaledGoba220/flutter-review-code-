import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: PageView(
            //  scrollDirection: Axis.vertical,
              children:  [
                Image.asset("assets/images/xxx.jpg",fit: BoxFit.cover,),
                Image.asset("assets/images/27982.jpg",fit: BoxFit.cover,),
                Image.asset("assets/images/28020.jpg",fit: BoxFit.cover,),
                Image.asset("assets/images/685679.jpg",fit: BoxFit.cover,),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
