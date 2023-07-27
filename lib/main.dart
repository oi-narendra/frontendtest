import 'package:flutter/material.dart';
import 'package:frontendtest/pages/post_detail_page.dart';

void main() {
  runApp(const MyApp());
}

/// my app
/// [MyApp] is the root widget of the app
class MyApp extends StatelessWidget {
  /// my app constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'NotoSans',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const PostDetailPage(),
    );
  }
}
