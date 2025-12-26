import 'package:flutter/material.dart';
import 'package:flutter_diet_app/screens/HelloPage.dart';

void main() => runApp(
  const MyApp()
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: HelloPage(), //home: 여기가 첫페이지가 될 페이지 위젯 넣는 자리.
      );
  }
}
