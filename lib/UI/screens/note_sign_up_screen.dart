import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/xxx.jpg",
              width: 300,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "UserName",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("If You Have an Account"),
              TextButton(
                  onPressed: () {
                  },
                  child: const Text("Click Here")),
            ],
          ),
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
