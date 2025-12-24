import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  //생성자
  const MainPage({super.key}); 

  @override
  Widget build(BuildContext context) {
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
              GestureDetector(
                onTap: (){
                  //탭하면 나오는 함수 만들어야함. 
                  //https://100sucoding.tistory.com/47#google_vignette
                },
                child: Text("더블탭 하면 다음 페이지로 이동하기",
                            style: TextStyle(
                              fontSize:20,
                              color: Colors.pink
                            ),
                ),
              )
            ]
          )

        )
      );
      
  }
}