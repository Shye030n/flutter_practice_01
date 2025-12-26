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
        mainAxisAlignment: MainAxisAlignment.center,
        // start, end, center, spaceBetween, spaceAround, spaceEvenly
        crossAxisAlignment: CrossAxisAlignment.center,
        //baseline, center, end, stretch, 
        children: [
          Text("서현이는"),
          Text("해낸다."),

          /* 
          꼭 GestureDetector가 아니어도 
          ButtonWidget, TextButton, IconButton처럼 
          기본적으로 버튼 역할을 하는 위젯은 존재한다. 
          하지만, 특별한 옵션없이 버튼화시키고 싶다면 
          GestureDetector 사용하면 됨. 
          */ 
          GestureDetector( //모든 위젯을 버튼화 해주는 위젯
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
          Image.asset('assets/images/akfn.jpg',
                      width: 100),

          //overflow 에러 해결 방안 
          // 1. width: height: 으로 크기 조정
          // 2. *** Expended()로, 전체 길이를 에뮬레이터 가로 길이에 맞춤
          //    Expended()는 화면의 남은 공간을 가로 길이에 맞춰 배치
          //    현재 사진이 3개여서 가로를 1:1:1 비율로 나눠서 배치
          //    비율은 flex로 설정하면 됨. flex는 비율임
          Row( 
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: 
                //Text("곤뇽이랑 놀고있는 행복한 마루"),
                Image.asset('assets/images/IMG_2082.jpg'),
              ),
              Expanded(flex: 2, child: 
                //Text("고구마 들고 기분좋은 마루"),
                Image.asset('assets/images/IMG_2745.jpg'),
              ),
              Expanded(flex: 1, child: 
                //Text("브이하는 귀여운 마루"),
                Image.asset('assets/images/IMG_3028.jpg'),
              ),
            ],
          ),
          //이미지 처리 2)online_image => 정렬 가로
          Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("고양이_온라인이미지"),
              Image.network('https://cdn.pixabay.com/photo/2017/03/18/13/33/cat-2153990_1280.jpg',
                            width: 100,),
              SizedBox(width: 200,), //이미지 사이에 200만큼 여백 생성
              Text("강아지_온라인이미지"),
              Image.network('https://cdn.pixabay.com/photo/2018/05/11/08/11/dog-3389729_1280.jpg',
                            width: 100,),
            ],
          ),
        ],
      ),
      );
  }
}