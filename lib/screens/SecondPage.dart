import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("두번째 페이지 테스트중"),
      ),
      body: Column(
        children: [
          Text("서현이는"),
          Text("해낸다.")
        ],
      )
      );
  }
}