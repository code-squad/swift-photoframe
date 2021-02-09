# 1단계 Tabbed 앱

2021.02.08(월)

1. TabBar Controller를 추가하고 Initial ViewController로 지정한다.

2. 기존에 스토리보드에 만들어졌던 ViewController 삭제

3. 기본 상태로 시뮬레이터를 하나 골라서 실행한다.

<img width="679" alt="스크린샷 2021-02-08 오후 10 52 29" src="https://user-images.githubusercontent.com/73586326/107229813-9ccd3c00-6a61-11eb-84b1-0607decd36cb.png">

<img width="1008" alt="스크린샷 2021-02-08 오후 10 52 22" src="https://user-images.githubusercontent.com/73586326/107229848-a8b8fe00-6a61-11eb-9488-ed01b98c26f5.png">


<img width="1792" alt="스크린샷 2021-02-08 오후 8 16 17" src="https://user-images.githubusercontent.com/73586326/107229870-b078a280-6a61-11eb-8cd0-7ef83c53e0d5.png">

### UITabBarController
UITabBarController의 핵심은 radio-style interface를 관리한다.
radio-style이란 우리가 여러가지 선택할 수 있는 보기가 있을때 보기 중 하나만 선택할 수 있는 경우에 사용하는 방식
TabBarController는 UIViewController를 상속받기 때문에 컨트롤러 자체가 내부 뷰 속성에 접근할 수 있는 하나의 뷰를 가지고 있습니다. 따라서 TabBarItem을 품고 있는 TabBar라는 뷰를 품고 있기에 각 탭별로 화면 전환이 가능

### UITabBar
TabBar View에 해당하는 부분이며 UIView로, 사용자에게 탭들을 어떻게 보여주고 탭 클릭 시 어떻게 반응할 건지 (피드백을 어떻게 보여줄지) 알고 있다. UITabBar는 보통 UITabBarController와 함께 사용하지만 혼자 쓰일 수도 있으며, 각 탭을 구분하는 버튼을 포함하고 있습니다. 각각의 버튼은 탭의 종류를 뜻하며 item이라고 합니다. TabBarItem은 TabBar에 최소 1개 이상이다.

### UITabBarItem
TabBarController의 TabBar중 한번에 하나만 선택되는 Radio Mode 각각의 대상이라고 할 수 있다.
각 아이템은 Badge를 추가하여 새로운 메시지의 개수를 표시하는 등 커스터마이징해서 원하는 형태로 활용이 가능하다.

[출처1](https://roeldowney.tistory.com/75)
[출처2](https://chocozero.github.io/IT/iOS/2018-02-09/iOS-UITabBarController%EC%99%80-UITabBar/)


# 2단계 IBOutlet

2021.02.09(화)
1. Xcode 프로젝트 내비게이터에서 Main.storyboard 파일을 선택하고 First Scene 에 있는 'First View' 레이블(Label)을 선택하고 Assistant Editor 모드로 변경한다.

2. 레이블을 선택하고 Control + 드래그해서 ViewController 코드에 IBOutlet으로 연결한다.

3. Outlet 이름으로 photoLabel을 입력한다.

4. ViewController 클래스 viewDidLoad() 함수에서 위에 추가한 아웃렛 변수에 값을 변경하고 다시 실행한다.

5. 위와 같이 코드로 firstLabel의 속성을 변경해본다. 글자색, 배경색, 투명도, 글자 크기를 바꿔본다.

6. firstLabel 아래 있는 레이블도 firstDescription 아웃렛으로 연결한다.(마찬가지 방식으로 값을 변경해서 꾸며본다.)

<img width="1792" alt="스크린샷 2021-02-09 오후 5 29 47" src="https://user-images.githubusercontent.com/73586326/107337168-56c5b600-6afd-11eb-8dc6-c732748bea4f.png">

<img width="1792" alt="스크린샷 2021-02-09 오후 5 29 27" src="https://user-images.githubusercontent.com/73586326/107337212-6513d200-6afd-11eb-87a0-dc020839da1c.png">

<img width="474" alt="스크린샷 2021-02-09 오후 5 34 25" src="https://user-images.githubusercontent.com/73586326/107337259-74931b00-6afd-11eb-90e2-bf2266fbe765.png">

[UILabel 클래스 속성(Property)](https://developer.apple.com/documentation/uikit/uilabel)

# 3단계 IBAction

2021.02.09(화)
1. Main.storyboard 에서 First Scene에 UIButton을 추가한다.

2. 방금 추가한 버튼을 선택하고 우측 유틸리티 영역 상단 4번째 탭 - 속성(Attributes)에서 Title을 다음으로 변경한다.

3. 버튼을 선택하고 Control + 드래그해서 ViewController 코드에 IBAction으로 연결한다.

4. 다음과 팝업에서 Connection 항목에서 IBOutlet 대신 IBAction 으로 변경한다.

5. 액션 이름을 nextButtonTouched 로 지정한다.

6. ViewController 클래스에 추가된 nextButtonTouched() 메서드에 아래처럼 구현을 추가한다.

<img width="1792" alt="스크린샷 2021-02-09 오후 8 38 10" src="https://user-images.githubusercontent.com/73586326/107360269-08261500-6b19-11eb-8233-c15c625e8f53.png">

<img width="476" alt="스크린샷 2021-02-09 오후 8 37 56" src="https://user-images.githubusercontent.com/73586326/107360308-13794080-6b19-11eb-81a6-c1fbe1f56e6c.png">

### IBAction Event
<img width="781" alt="스크린샷 2021-02-09 오후 9 03 58" src="https://user-images.githubusercontent.com/73586326/107361367-a23a8d00-6b1a-11eb-9ca7-1f916f5f9999.png">


[출처1](https://o-o-wl.tistory.com/45)
[출처2](https://roeldowney.tistory.com/65)
[UIControl.Event](https://developer.apple.com/documentation/uikit/uicontrol/event)
