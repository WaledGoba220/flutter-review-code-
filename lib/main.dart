import 'package:flutter/material.dart';
import 'package:review/UI/screens/example_one.dart';
import 'package:review/UI/screens/home_screen.dart';
import 'package:review/UI/screens/note_login_screen.dart';
import 'package:review/UI/widgets/alert_dialog.dart';
import 'package:review/UI/widgets/bottom_navigation_bar.dart';
import 'package:review/UI/widgets/grid_view_builder.dart';
import 'package:review/UI/widgets/list_view.dart';
import 'package:review/UI/widgets/list_view_builder.dart';
import 'package:review/UI/widgets/list_view_separator.dart';
import 'package:review/UI/widgets/page_view_builder.dart';
import 'package:review/UI/widgets/search_delegate.dart';
import 'package:review/UI/widgets/tab_controller.dart';
import 'package:review/UI/widgets/text_form_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: "flutter review",
      theme: ThemeData(
        primaryColor: Colors.red,
        buttonColor: Colors.red,
        // textTheme: TextTheme(
        //
        // ),
      ),
      home: const LoginScreen(),
      // routes: {
      //   "ex": (context) => const ExampleOne(),
      // },
    );
  }
}
