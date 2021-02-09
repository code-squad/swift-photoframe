# Step.1

- TabBar Controller 추가 및 Initial ViewController 지정하기

- 실행화면 캡쳐

<img src="https://user-images.githubusercontent.com/74946802/107307012-45fb4d00-6ac9-11eb-8bd2-72e3289ad6a4.png" width="300" height="600">

- 콘솔창 확인
<img width="563" alt="스크린샷 2021-02-09 오전 11 21 10" src="https://user-images.githubusercontent.com/74946802/107307127-76db8200-6ac9-11eb-991e-574128be5440.png">
<img width="563" alt="스크린샷 2021-02-09 오전 11 25 57" src="https://user-images.githubusercontent.com/74946802/107307221-9ffc1280-6ac9-11eb-8276-f397672dba7c.png">
<img width="563" alt="스크린샷 2021-02-09 오전 11 25 45" src="https://user-images.githubusercontent.com/74946802/107307254-ae4a2e80-6ac9-11eb-94c5-bb3025a6cff8.png">

- UITabBarController VS UITabBar

#### UITabBarController

여러가지 선택할 수 있는 보기가 있을 때, 그 중 하나를 선택하여 사용하는 방식인 radio-style interface를 관리  

UIViewController를 상속받기 때문에 컨트롤러 자체가 내부 뷰 속성에 접근할 수 있는 하나의 뷰를 가지고 있음  

TabBarItem을 품고 있는 TabBar라는 뷰를 품고 있기에 각 탭별로 화면 전환 가능  


#### UITabBar

TabBar View에 해당하는 부분이며 UIView를 상속받아서 탭 클릭시 반응을 관리

UITabBar는 보통 UITabBarController와 함께쓰이지만, 혼자 쓰일 수도 있음

각 탭을 구분하는 버튼을 가지고 있고 각 버튼은 탭의 종류를 뜻하며 item이라고 부름

TabBarItem은 TabBar에 최소 1개 이상

# Step.2

- Label 추가하고 IBOutlet 연결

- 첫화면 꾸미기

<img src="https://user-images.githubusercontent.com/74946802/107310900-b0fc5200-6ad0-11eb-9402-1761303ded14.png" width="300" height="600">

- UILabel Property 학습하기

# Step.3

- 버튼 추가하고 코드 구현하기

<img width="551" alt="스크린샷 2021-02-09 오후 2 09 59" src="https://user-images.githubusercontent.com/74946802/107318720-bbbee300-6ae0-11eb-9869-75ede20c09ba.png">

- 실행 전/후 화면

<img src="https://user-images.githubusercontent.com/74946802/107318746-ced1b300-6ae0-11eb-9578-cc5cd4e96ee8.png" width="300" height="600">
<img src="https://user-images.githubusercontent.com/74946802/107318767-d7c28480-6ae0-11eb-9a9b-656f0c89ac82.png" width="300" height="600">

#### IBAction && IBOutlet

둘 모두 StoryBoard와의 연결고리 역할

IBAction은 Event가 일어날 경우 호출되는 Action을 정의해둔 것

IBOutlet은 값에 접근하기 위한 변수

Action은 입력이 들어왔을 때 어떤 행동을 하는지 나타냄

Outlet은 데이터를 가져오는 것

IB는 Interface Builder의 약자

@는 예약어로서 컴파일러에게 @가 붙은 명령어가 어떤 속성을 가졌는지 전하는 역할

# Step.4

- View Controller 추가하여 Button과 연결

segue연결시 iOS13부터 modalPresentation 디폴트값 변경 => fullscreen 필요시 수동 변경필요

수동 변경 조치 완료

- 배경 색상 변경 후, 작동 전/후 사진 추가

- 첫번째 화면
<img src="https://user-images.githubusercontent.com/74946802/107326543-f0399b80-6aee-11eb-829a-c00310da5910.png" width="300" height="600">

- 두번째 화면
<img src="https://user-images.githubusercontent.com/74946802/107326609-12331e00-6aef-11eb-9d50-0ee5fe609177.png" width="300" height="600">

- 세번째 화면
<img src="https://user-images.githubusercontent.com/74946802/107326639-21b26700-6aef-11eb-8830-3987e32a64e0.png" width="300" height="600">
