# 과정

## 1단계

"기존에 있었던 View Controller를 삭제하고 Tab Bar Controller를 추가한 다음 "Attributes inspector"에서 "is Initial View Controller"에 체크한다."

![스크린샷 2021-02-08 오후 4 51 44](https://user-images.githubusercontent.com/61342175/107374922-812e6800-6b2b-11eb-9d35-186575b271d3.png)
 
UITapBar와 UITapBarController의 차이?

처음 생각했었던 것 : UITapBar는 개별 View Controller에 추가할 수 있는 TapBar이고, UITapBarController는 하나의 View Controller이면서 하단에 버튼이 생기고 경로 이동이 바로 됨.

Documentation Link

https://developer.apple.com/documentation/uikit/uitabbar
https://developer.apple.com/documentation/uikit/uitabbarcontroller

### UITabBar

"A controller that displays one or more buttons in a tab bar for selecting between different subtasks, views, or modes in an app."

보통 UITabBarController와 함께 사용하지만, app 내에서 standalone controls로써 사용할 수 있다. 백그라운드 이미지, 컬러 등 인터페이스에서 커스텀이 가능하다. 사용 시 init(frame:) 메소드 혹은 다른 view initializer method를 통해 initial configuration을 set 해줘야 한다. 내용 중간에 UIToolbar 클래스와 유사해보이지만 서로 다른 목적을 가지고 있음을 알려주고 있다.

UIToolbar : to present the user with a set of actions that are relevant to the currently presented content.
UITabBar : to convey and change your app's mode.

### UITabBarController

"A container view controller that manages a multiselection interface, where the selection determines which child view controller to display."

Tab bar interface는 화면 아래에 여러 tab을 둠으로써 다른 모드를 선택할 수 있도록 도와준다. 각 tab은 custom view controller에 연관된다. 특정 tab이 선택되면, 이전 tab이 무엇인지 상관하지 않고 view controller에 상응하는 root view를 보여준다. property에서 initial tab 설정이 가능하다. selectedIndex property를 사용하면서 view controller를 array index로 선택할 수 있다. UITabBarControllerDelegate protocol 준수가 필요하다.

UITabBarController 클래스는 UIViewController 클래스로부터 상속받은 것이기 때문에 tab bar controller는 view property를 통해 접근 가능한 고유의 view를 가지고 있다. tab bar controller를 위한 view는 tab bar view, custom content를 포함하는 view의 컨테이너일 뿐이다.

UITabBar는 "controller", UITabBarController는 "container view controller"


## 2단계

"Cocoa Touch Class 파일을 Subclass가 UIViewController인 형태로 추가한다. Main.storyboard에서 ViewController를 선택하고 Identity inspector에서 Class에 추가한 파일의 클래스 이름을 입력함으로써 연결시킨다. Label 생성 후 추가된 파일에 Control + Drag로 IBOutlet을 추가한다."

![스크린샷 2021-02-08 오후 7 40 24](https://user-images.githubusercontent.com/61342175/107374977-91464780-6b2b-11eb-912b-322963e05354.png)

Documentation Link

https://developer.apple.com/documentation/uikit/uilabel

UILabel Property Link

https:/docs.microsoft.com/ko-kr/dotnet/api/uikit.uilabel.font?view=xamarin-ios-sdk-12

### UILabel

"A view that displays one or more lines of informational text"


## 3단계

"Button을 ViewController에 추가하고 Attributes에서 Text를 바꾼다. ViewController 파일에 Control + Drag로 IBAction 설정 후 추가한다."

![스크린샷 2021-02-08 오후 8 07 41](https://user-images.githubusercontent.com/61342175/107375047-a9b66200-6b2b-11eb-81f9-f82f8d937963.png)

Link

https://o-o-wl.tistory.com/45

IB : Interface Builder

IBOutlet : Object 간의 합성 형태? 객체 사이에서 메시지를 주고받는 동적 패턴
IBAction : 하나의 컨트롤이 타깃에 보내는 메시지?

Target : Receiver of action message
Control : can reflect the purpose of user. deliver the order of user to object which is responsible for the order.

UIControl.Event
touchDown, touchDownRepeat, touchDragInside, touchDragOutside, touchDragEnter, touchDragExit, touchUpInside, touchUpOutside, touchCancel, valueChanged, primaryActionTriggered, editingDidBegin, edtingChanged, editingDidEnd, editingDidEndOnExit, allTouchEvents, allEditingEvents, applicationReserved, systemReserved, allEvents


 ## 4단계

 "특정 ViewController에 버튼을 추가하고 새로운 ViewController 생성 후 버튼에 Control + Drag로 Segue를 설정한다. 버튼 클릭 시 새롭게 생성된 ViewController로 이동한다."

![스크린샷 2021-02-08 오후 8 46 39](https://user-images.githubusercontent.com/61342175/107375132-c05cb900-6b2b-11eb-88cb-92f3fe35432f.png)

 Segue 액션 중 모달 등 다른 액션 설정으로 실행해봤다. Attributes inspector에서 변경할 수 있으며, 추가적으로 Animates를 Uncheck하고 실행해봤다. Animates를 Uncheck하면 새로운 ViewController가 움직이면서 나타나지 않고 바로 나타난다.


## 5단계

Link

https://zeddios.tistory.com/43
https://deliorange.tistory.com/25

viewDidLoad : ViewController 생성 후 항상 보였던 함수. 메모리에 올려지고 시스템에 의해 바로 호출. 리소스 초기화 및 초기 화면 구성하는 용도로 사용.
viewWillAppear : stack, LIFO를 생각. 다른 뷰에 갔다가 돌아왔을 때 viewDidLoad가 아닌 viewWillAppear가 호출.
viewDidAppear : view가 나타난 직후에 실행.
viewWillDisappear : view가 사라짐.
viewDidDisappear : view가 사라졌다고 알려줌.


## 6단계

![스크린샷 2021-02-09 오후 7 35 05](https://user-images.githubusercontent.com/61342175/107375237-da969700-6b2b-11eb-8805-681e36057d01.png)

"NavigationController를 추가하고자 하는 ViewController를 선택하고 상단에 있는 Editor -> Embed In -> Navigation Controller"

Link

https://developer.apple.com/documentation/uikit/uiviewcontroller

View Controller Container : ViewController를 담는 그릇? 화면 안에 여러 ViewController를 둘 수 있는 것?

NavigationController, TapBarController, SystemContainerViewController 세 가지

### Implementing a Container View Controller

"A custom UIViewController subclass can also act as a container view controller. A container view controller manages the presentation of content of other view controllers it owns, also known as its child view controllers. A child's view can be presented as-is or in conjunction with views owned by the container view controller."

- ViewController에서 한 번에 몇 개의 child view를 보여줄 것인지 결정해줘야 한다.
- 언제 child view를 보여줄 것인지도 결정해줘야 한다.
- ViewController의 hierarchy에서 어느 곳에 나타나야 하는지 결정해줘야 한다.

아래와 같은 함수가 눈에 띈다.
addChild(_:)
removeFromParent()
willMove(toParent:)
didMove(toParent:)

### push / pop

먼저 NavigationController를 통한 이해가 쉬울 것 같다. stack 구조라는 점을 떠올리자.
