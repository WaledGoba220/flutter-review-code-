import 'dart:math';

import 'package:flutter/material.dart';

class ExampleOne extends StatelessWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 2, color: Colors.black)),
                  child: const Text(
                    "Waled Saied Khames",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: const Text(
                  "I went to the T-World office, they told me that because that spam is from private numbers, "
                  "they can't do anything about that. What's peculiar is that I started receiving this crap almost immediately after getting the SIM card, and at that time I had not told anyone my number.",
                  style: TextStyle(fontSize: 18, height: 1.5),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          ),
                          const Text(
                            "17 Reviews",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: const [
                                Icon(
                                  Icons.restaurant,
                                  color: Colors.green,
                                  size: 40,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Feed"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("2 - 4"),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(
                                  Icons.category,
                                  color: Colors.green,
                                  size: 40,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Feed"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("2 - 4"),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(
                                  Icons.emoji_food_beverage_rounded,
                                  color: Colors.green,
                                  size: 40,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Feed"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("2 - 4"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Wrap(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
          // Navigator.canPop(context);
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
