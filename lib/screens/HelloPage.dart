import 'package:flutter/material.dart';
import 'package:flutter_diet_app/screens/SecondPage.dart';

class HelloPage extends StatelessWidget {

  //생성자
  const HelloPage({super.key}); 

  @override //StatelessWidget를 상속하고 재정의가 필요할 때 쓰는 어노테이션
  Widget build(BuildContext context) { //Widget을 반환하여 build한다
    return Scaffold(
      appBar : AppBar(
        title: Text("메뉴바 테스트중",
                    style: TextStyle(
                      fontSize: 25, 
                      color: Colors.blue 
                    )),
        ),

        body: Container(
          color: Colors.yellow,
          width: double.infinity,
          height: 500,
          child: Column(
            children: [
              Text("바디 테스트중_1",
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.red
                        )
              ),
              Text("바디 테스트중_2",
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.green
                        )
              ),
              Text("바디 테스트중_3",
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue
                        )
              ),

              GestureDetector( //위젯을 버튼화 해주는 위젯
                onTap: (){ //{ 이 괄호 안 =무명함수 =익명함수: 이름이 없는 함수로, 재활용되지 않는 함수}
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondPage()));
                },
                child: Text("이 글자를 클릭하면 다음 페이지로 넘어간다",
                            style: TextStyle(
                            fontSize:20,
                            color: Colors.pink
                            ),
                ),
              ),
            ],
          ),

        ),
      );
      
  }
}