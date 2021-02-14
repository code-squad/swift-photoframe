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

# 4단계 Scene과 Segue

2021.02.10(수)

1. Main 스토리보드에서 First Scene 옆에 ViewController를 드래그해서 새로운 Scene을 추가한다.

2. 앞 단계에서 추가한 [다음]버튼을 선택하고 Control + 드래그를 해서 새로 추가한 Scene에 연결한다.

3. 팝업으로 표시되는 Action Segue에서 Show 항목을 선택한다.

4. 새로 추가한 Scene 속성에서 배경 색상(Background Color)을 원하는 색상으로 변경한다. 새로 앱을 실행해보고 [다음] 버튼을 누르면 새로운 화면이 나타나는지 확인한다.

5. 다시 스토리보드에서 위에 추가한 Scene (혹은 ViewController)에 [다음] 버튼을 추가한다. 우측 옆에 한 단계 더 표현하기 위한 ViewController를 추가하고 배경 색상을 다른 색상으로 변경한다. 위와 마찬가지로 [다음]버튼에서 새 Scene으로 Segue를 연결한다.

<img width="1792" alt="스크린샷 2021-02-10 오후 2 37 09" src="https://user-images.githubusercontent.com/73586326/107470014-183c0400-6bae-11eb-918f-98f583c23676.png">

![Simulator Screen Shot - iPhone 11 - 2021-02-10 at 14 37 00](https://user-images.githubusercontent.com/73586326/107470126-3dc90d80-6bae-11eb-8c04-d99c5649f6d2.png)

![Simulator Screen Shot - iPhone 11 - 2021-02-10 at 14 20 31](https://user-images.githubusercontent.com/73586326/107470148-44f01b80-6bae-11eb-9876-65a6e65bfbe9.png)

![Simulator Screen Shot - iPhone 11 - 2021-02-10 at 14 20 38](https://user-images.githubusercontent.com/73586326/107470179-51747400-6bae-11eb-88e8-32dc18c943b8.png)

# 5단계 ViewController 프로그래밍

2021.02.10(수)

<img width="1792" alt="스크린샷 2021-02-10 오후 5 50 02" src="https://user-images.githubusercontent.com/73586326/107630544-0427fd80-6ca7-11eb-9090-27c91837fbef.png">

<img width="1792" alt="스크린샷 2021-02-10 오후 5 38 41" src="https://user-images.githubusercontent.com/73586326/107630660-320d4200-6ca7-11eb-981d-7373d0cf8bac.png">

<img width="1792" alt="스크린샷 2021-02-10 오후 5 39 01" src="https://user-images.githubusercontent.com/73586326/107630690-3f2a3100-6ca7-11eb-800d-6be6fee00a84.png">

## View Controller Life-Cycle

### loadView
컨트롤러가 관리하는 뷰를 만드는 역할을 한다.

### viewDidLoad
뷰의 로딩이 완료 되었을 때 시스템에 의해 자동으로 호출되기 때문에 일반적으로 리소스를 초기화하거나 초기 화면을 구성하는 용도로 주로 사용한다.
화면이 처음 만들어질 때 한번 실행되므로 처음 한번 실행해야 하는 초기화 코드가 있을 경우 사용하면 된다.

### viewWillAppear
뷰가 나타날 거라는 신호를 컨트롤러에게 알리는 역할을 한다. 뷰가 나타나기 직전에 호출된다.
다른 뷰에서 다시 돌아오는 상황에 실행해야 하는 것들을 사용하면 된다.

### viewDidAppear
뷰가 나타났다는 것을 컨트롤러에게 알리는 역할을 하고 화면에 적용될 애니메이션을 그려준다. viewDidAppear는 뷰가 화면에 나타난 직후에 실행된다.

### viewWillDisappear
뷰가 사라지기 직전에 호출되는 함수이다. 뷰가 삭제 되려고 하는 것을 뷰 컨트롤러에게 알리는 역할을 한다.

### viewDidDisappear
viewDidDisappear가 호출되면 뷰 컨트롤러가 뷰가 제거된 것을 알려준다.

[참고](https://zeddios.tistory.com/43)

# 6단계 Container ViewController

2021.02.14(일)

<img width="1792" alt="스크린샷 2021-02-14 오후 2 52 32" src="https://user-images.githubusercontent.com/73586326/107869886-95c98200-6ed6-11eb-9131-4cc47c51cdb9.png">

<img width="1792" alt="스크린샷 2021-02-14 오후 3 05 57" src="https://user-images.githubusercontent.com/73586326/107869889-a11cad80-6ed6-11eb-99db-92b0195a3582.png">

[참고](https://zeddios.tistory.com/44)

# 7단계 Second Scene 화면

2021.02.14(일)

<img width="1792" alt="스크린샷 2021-02-14 오후 5 10 18" src="https://user-images.githubusercontent.com/73586326/107871731-94ed1c00-6ee7-11eb-94cc-c0711a3092b0.png">

### Content Mode
컨텐츠의 사이즈에 따라 뷰가 어떻게 조절되는지 정의하는 옵션

### scaleAspectFit
비율을 유지하면서 뷰의 사이즈에 맞게 이미지를 늘리는 옵션이다. 이미지가 뷰를 꽉 채우지 못해서 남는 부분은 투명처리 된다. AspectFill(비율 유지 O, 화면 꽉 채움 O, 이미지 잘림 O)

### scaleAspectFill
비율을 유지하면서 뷰의 사이즈에 맞게 이미지를 꽉 채우는 옵션이다. 그래서 이미지의 사이즈에 따라 어떤 이미지는 잘려 보일 수도 있다. AspectFit(비율 유지 O, 화면 꽉 채움 X, 이미지 잘림 X)

### scaleToFill
전체 이미지가 다 나올 수 있도록 필요하다면 비율을 깨뜨리면서 뷰의 사이즈에 맞게 이미지를 꽉 채우는 옵션이다.
ScaleToFill(비율 유지 X, 화면 꽉 채움 O, 이미지 잘림 X)
