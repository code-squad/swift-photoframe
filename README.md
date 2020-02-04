# 사진액자 앱



### photoframe-step1

2020.02.03 21:30 
ViewController 클래스 viewDidLoad() 함수에서 `print(#file, #line, #function, #column)` 코드를 추가 후 실행 콘솔 영역 출력 확인

![image-20200203212810017](/Users/keunnalee/Library/Application Support/typora-user-images/image-20200203212810017.png)

### photoframe-step2 

2020.02.03 22:00 
First Scene에 만들어져 있는 레이블들(firstLabel, firstDescription)을 IBOutlet으로 연결 후 연결한 아웃렛 변수에 값을 변경.

![image-20200203220128744](/Users/keunnalee/Library/Application Support/typora-user-images/image-20200203220128744.png)

### photoframe-step3 

2020.02.04 15:12
First Scene에 버튼을 추가하고 IBAction으로 연결. 
연결 후 텍스트 색상과 배경색, 투명도를 변화시키는 액션에 대한 메서드 구현.
![Screen Shot 2020-02-04 at 3.03.30 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-04 at 3.03.30 PM.png)

(왼쪽 스냅샷 : `다음` 버튼 누르기 전 , 오른쪽 스냅샷 : `다음` 버튼 누른 후 )

### Photoframe-step4

2020.02.04 16:40

두 개의 Scene 추가. 두번째 화면(Indigo 색상)에서 세번째 화면(Purple)로 넘어갈 때 Segue 추가

![Screen Shot 2020-02-04 at 4.33.04 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-04 at 4.33.04 PM.png)

(첫번째 스냅샷 : `다음` 버튼 누르기 전 , 두번째 스냅샷 :첫번째 페이지에서 `다음` 버튼 누른 후 Indigo 배경색 화면, 세번째 스냅샷 : 두번째 페이지에서 `다음` 버튼 누른 후 Purple 배경색 화면)