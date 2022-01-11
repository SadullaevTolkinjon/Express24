import 'package:flutter/material.dart';

import 'package:uzexpress/pages/zakaz_page.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey, fontFamily: "Oswald"),
      home: Zakaz_page(),
    );
  }
}
