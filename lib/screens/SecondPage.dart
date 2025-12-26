import 'package:flutter/material.dart';
import 'package:flutter_diet_app/screens/HelloPage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("두번째 페이지 테스트중"),
      ),
      body: Column(
        children: [
          Text("서현이는"),
          Text("해낸다."),

          GestureDetector(
            onDoubleTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HelloPage()));
            },
          child:  Text("여기를 더블 클릭하면 HelloPage로 이동한다."),
          ),
          
        ],
      ),
      );
  }
}