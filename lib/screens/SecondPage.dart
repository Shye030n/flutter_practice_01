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

          GestureDetector( //모든 위젯을 버튼화 해주는 위젯

          /* 
          꼭 GestureDetector가 아니어도 
          ButtonWidget, TextButton, IconButton처럼 
          기본적으로 버튼 역할을 하는 위젯은 존재한다. 
          하지만, 특별한 옵션없이 버튼화시키고 싶다면 
          GestureDetector 사용하면 됨. 
          */ 

            onDoubleTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HelloPage()));
            },
            child:  Text("여기를 더블 클릭하면 HelloPage로 이동한다.",
                        style: TextStyle(
                          color: Colors.pink[400]
                        ),
              ),
          ),
          
          //이미지 처리 1)asset_image
          Text("행복하게 누워있는 마루"),
          Image.asset(
                      'assets/images/akfn.jpg',
                      width: 100),
          Text("곤뇽이랑 놀고있는 행복한 마루"),
          Image.asset(
                      'assets/images/IMG_2082.jpg',
                      width: 100),
          Text("고구마 들고 기분좋은 마루"),
          Image.asset(
                      'assets/images/IMG_2745.jpg',
                      width: 100),
          Text("브이하는 귀여운 마루"),
          Image.asset(
                      'assets/images/IMG_3028.jpg',
                      width: 100),
          //이미지 처리 2)online_image  
          Text("고양이_온라인이미지"),
          Image.network('https://cdn.pixabay.com/photo/2017/03/18/13/33/cat-2153990_1280.jpg',
                        width: 100,),
        ],
      ),
      );
  }
}