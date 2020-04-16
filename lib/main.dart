import 'package:bloccleanexample/di/service_locator.dart';
import 'package:bloccleanexample/post/presentation/post_page.dart';
import 'package:flutter/material.dart';

void main() {
  ServiceLocator.register();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BloC Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: PostPage(),
    );
  }
}
