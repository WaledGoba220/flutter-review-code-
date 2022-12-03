import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return  AlertDialog(
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: const Text("Cancel")),
                    TextButton(onPressed: (){}, child: const Text("Ok")),

                  ],
                  title: const Text("Alert"),
                  content:const Text("This is Error Snap !"),
                  icon: const Icon(Icons.error),
                  contentTextStyle: const TextStyle(color: Colors.red,fontSize: 15),
                );
              });
            }, child: const Text("Alert Click"),),
          ],
        ),
      ),
    );
  }
}
