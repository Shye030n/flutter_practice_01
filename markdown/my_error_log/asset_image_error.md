내가 생성한 assets 폴더 내부에 있는 이미지를 띄우는데, 에러가 났다.

# 원인
  프로젝트에 첨부할 파일의 저장소인 assets 폴더를 lib 폴더 안에 생성했기 때문에 → 에러 발생

# 해결방안
1. asset 폴더는 프로젝트 바로 하위 폴더로 생성하기
2. pubspec.yaml 파일에
:asset  
    - assets/images/ #이렇게 작성해야 함. ( ( / )슬래시 O, ( \ ) 백슬러시X)
3. 이미지 파일을 불러오는 위젯에서 경로는 ( ( / )슬래시 O, ( \ )백슬러시X)
Image.asset(’assets/images/akfn.jpg’)