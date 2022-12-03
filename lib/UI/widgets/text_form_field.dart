import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({Key? key}) : super(key: key);

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {
  TextEditingController userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFormField"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: userName,
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  helperMaxLines: 1,
                  prefixIcon: const Icon(Icons.person),
                  suffixIcon: const Icon(Icons.ac_unit),
                  labelText: "Full Name",
                  filled: true,
                  fillColor: Colors.pink,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                cursorColor: Colors.yellow,
                cursorHeight: 20,
                keyboardType: TextInputType.emailAddress,
                maxLength: 30,
                validator: (text) {
                  if (text!.length < 4) {
                    return "Not Found please Enter More";
                  }
                  return null;
                },
              ),
            ),
            TextButton(
                onPressed: () {
                  var formData = formKey.currentState;
                  if (formData!.validate()) {
                    print("valid");
                  } else {
                    print("Non Valid");
                  }
                },
                child: const Text("COPY")),
          ],
        ),
      ),
    );
  }
}
