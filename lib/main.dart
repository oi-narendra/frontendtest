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
        textTheme: const TextTheme().copyWith(
          bodySmall: const TextStyle(
            color: Color(0xFF303A49),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          labelMedium: const TextStyle(
            color: Color(0xFF1C222B),
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        colorScheme: const ColorScheme.light().copyWith(
          primary: const Color(0xFF313B49),
          secondary: const Color(0xFF01B99F),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFFAFB9CA),
          size: 24,
        ),
        dividerColor: const Color(0xFFF7F8FA),
      ),
      home: const PostDetailPage(),
    );
  }
}
