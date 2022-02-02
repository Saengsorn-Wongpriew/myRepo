import 'package:flutter/material.dart';
import 'package:listviewing/long_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic List View Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widgets Exercise"),
        ),
        body: getListView(),
      ),
    );
  }
}
