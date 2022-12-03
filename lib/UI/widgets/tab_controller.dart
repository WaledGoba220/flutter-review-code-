import 'package:flutter/material.dart';

class DefaultTabControllerScreen extends StatelessWidget {
  const DefaultTabControllerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabs Screen'),
            bottom: TabBar(
              tabs: [
                Tab(child: Text("One"),),
                Tab(child: Text("Two"),),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Text("one"),
              Text("Two"),

            ],
          ),
        ),
    );
  }
}
