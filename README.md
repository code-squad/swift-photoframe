# 과정

## 1단계

"기존에 있었던 View Controller를 삭제하고 Tab Bar Controller를 추가한 다음 "Attributes inspector"에서 "is Initial View Controller"에 체크한다."

![스크린샷 2021-02-08 오후 4 51 44](https://user-images.githubusercontent.com/61342175/107374922-812e6800-6b2b-11eb-9d35-186575b271d3.png)
 
UITapBar와 UITapBarController의 차이?

처음 생각했었던 것 : UITapBar는 개별 View Controller에 추가할 수 있는 TapBar이고, UITapBarController는 하나의 View Controller이면서 하단에 버튼이 생기고 경로 이동이 바로 됨.

Documentation Link   
<https://developer.apple.com/documentation/uikit/uitabbar>
<https://developer.apple.com/documentation/uikit/uitabbarcontroller>

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

![스크린샷 2021-02-08 오후 7 40 24](https://user-images.githubusercontent.com/61342175/107374977-91464780-6b2b-11eb-912b-322963e05354.png)

Documentation Link  
<https://developer.apple.com/documentation/uikit/uilabel>

UILabel Property Link  
<https:/docs.microsoft.com/ko-kr/dotnet/api/uikit.uilabel.font?view=xamarin-ios-sdk-12>

### UILabel

"A view that displays one or more lines of informational text"


## 3단계

"Button을 ViewController에 추가하고 Attributes에서 Text를 바꾼다. ViewController 파일에 Control + Drag로 IBAction 설정 후 추가한다."

![스크린샷 2021-02-08 오후 8 07 41](https://user-images.githubusercontent.com/61342175/107375047-a9b66200-6b2b-11eb-81f9-f82f8d937963.png)

Link   
<https://o-o-wl.tistory.com/45>

IB : Interface Builder

IBOutlet : Object 간의 합성 형태? 객체 사이에서 메시지를 주고받는 동적 패턴.  
IBAction : 하나의 컨트롤이 타깃에 보내는 메시지?

Target : Receiver of action message.  
Control : can reflect the purpose of user. deliver the order of user to object which is responsible for the order.

UIControl.Event
touchDown, touchDownRepeat, touchDragInside, touchDragOutside, touchDragEnter, touchDragExit, touchUpInside, touchUpOutside, touchCancel, valueChanged, primaryActionTriggered, editingDidBegin, edtingChanged, editingDidEnd, editingDidEndOnExit, allTouchEvents, allEditingEvents, applicationReserved, systemReserved, allEvents


 ## 4단계

 "특정 ViewController에 버튼을 추가하고 새로운 ViewController 생성 후 버튼에 Control + Drag로 Segue를 설정한다. 버튼 클릭 시 새롭게 생성된 ViewController로 이동한다."

![스크린샷 2021-02-08 오후 8 46 39](https://user-images.githubusercontent.com/61342175/107375132-c05cb900-6b2b-11eb-88cb-92f3fe35432f.png)

 Segue 액션 중 모달 등 다른 액션 설정으로 실행해봤다. Attributes inspector에서 변경할 수 있으며, 추가적으로 Animates를 Uncheck하고 실행해봤다. Animates를 Uncheck하면 새로운 ViewController가 움직이면서 나타나지 않고 바로 나타난다.


## 5단계

Link  
<https://zeddios.tistory.com/43>
<https://deliorange.tistory.com/25>

viewDidLoad : ViewController 생성 후 항상 보였던 함수. 메모리에 올려지고 시스템에 의해 바로 호출. 리소스 초기화 및 초기 화면 구성하는 용도로 사용.   
viewWillAppear : stack, LIFO를 생각. 다른 뷰에 갔다가 돌아왔을 때 viewDidLoad가 아닌 viewWillAppear가 호출.   
viewDidAppear : view가 나타난 직후에 실행.   
viewWillDisappear : view가 사라짐.   
viewDidDisappear : view가 사라졌다고 알려줌.   


## 6단계

![스크린샷 2021-02-09 오후 7 35 05](https://user-images.githubusercontent.com/61342175/107375237-da969700-6b2b-11eb-8805-681e36057d01.png)

"NavigationController를 추가하고자 하는 ViewController를 선택하고 상단에 있는 Editor -> Embed In -> Navigation Controller"

Link  
<https://developer.apple.com/documentation/uikit/uiviewcontroller>

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


## 7단계

"ViewController에 UIImageView, Label, Button을 추가한다. 새로운 파일을 생성하고 ViewController와 연결한다. 이미지 파일을 프로젝트에서 사용할 수 있도록 프로젝트에 추가한다. 파일 이름을 담는 Array를 생성한다. Array에서 사용할 수 있는 randomElement()함수를 활용해 버튼 터치 시 이미지가 바뀔 수 있도록 구현한다."

![스크린샷 2021-02-10 오후 2 33 48](https://user-images.githubusercontent.com/61342175/107470247-71a43300-6bae-11eb-8f56-1c9492cd779e.png)

Documentation Link   
<https://developer.apple.com/documentation/uikit/uiimageview>
<https://developer.apple.com/documentation/uikit/uiimage>

### UIImageView

"Image views let you efficiently draw any image that can be specified using a UIImage object."

animated image는 이 클래스의 함수를 통해서 애니메이션의 동작을 사용할 수 있게 하며, 다른 애니메이션 파라미터를 구체화할 수 있다. 파라미터 설정에 따라 다르지만 기본적으로 contentMode property와 image 자체의 configuration에 따라 이미지가 어떻게 나타나는지 결정되는 모양이다. 이미지가 갖는 dimension을 image view의 dimension에 맞게 구체화하는 것이 좋지만, image view는 활용 가능한 공간에 따라 scale을 최적화시킨다. 이미지의 사이즈가 바뀌면, 자동적으로 스케일된다. ("If the size of the image view itself changes, it automatically scales the image as needed", 파라미터 디폴트를 의미하는 것 같다. UIView.ContentMode.scaleAspectFit, UIView.ContentMode.scaleAspectFill 모드에 따라 이미지 고유의 aspect ratio를 유지한다. 변경도 가능한 모양이다.) 다음은 투명, 애니메이션 등에 대한 설명이 이어진다.

CS Mission 중에 찾았었던 영상이 생각났다.

<https://www.youtube.com/watch?v=vzXl0MhVXxY>

ViewController에 UIImageView를 가득 채우고 안에 Core Graphics로 Draw. image property를 사용한다. 그 외에도 highlightedImage, animationImages 등 여러 property가 있고, 애니메이션과 관련한 함수들, 예를 들어 startAnimating()과 같은 것들이 보인다.

### UIImage

"You use image objects to represent image data of all kinds, and the UIImage class is capable of managing data for all image formats supported by the underlying platform. Image objects are immutable, so you always create them from existing image data, such as an image file on disk or programmatically created image data."

여러 가지 방법으로 사용할 수 있다고 한다. 아래 내용과 같다.
 
  - Assign an image to a UIImageView object to display the image in your interface.
  - Use an image to customize system controls shcu as buttons, sliders, and segmented controls.
  - Draw an image directly into a view or other graphics context.
  - Pass an image to other APIs that might require image data.




# 추가적으로 고민해본 부분

## UITabBar vs. UITabBarController

더 근본적인 질문. Swift에서 Controller가 어떤 의미인지 생각해보기로 했다. 애플 개발자 문서에 검색하면 게임패드 컨트롤러 등이 보이며, 기초적인 개념이기 때문인지 별도의 설명은 없다. Naver에 controller를 검색하면 영어사전에 1. (특히 큰 조직이나 부서의) 관리자, 2. (기계의) 조종[제어] 장치, 3. (회사의) 회계 담당자 [경리 부장]이라는 설명이 나온다. 개인적으로 제어 장치라는 표현이 더 와닿는다. 이전부터 이해하고 있었던 View Controller는 단순한 화면이 아니라 여러 가지 View에 대한 Controller, 즉 View를 제어하는 무엇이라고 생각했다.

앞에서 UITabBar는 Controller라고 했다. UITabBar가 가지는 요소는 UITabBarItem objects인데, 하나 이상의 이 objects에 대한 Controller이지 않을까 싶은 생각이 들었다. 반면에 UITabBarController는 Container View Controller로써 View Controller를 제어하는 하나의 Controller로 이해하고 있다.

## UILabel Property

text, attributedText, font, textColor, textAlignment, lineBreakMode 등

## View Controller Life Cycle

https://zeddios.tistory.com/43

https://zeddios.tistory.com/44

위 Zedd님의 글에서 이미지의 내용을 살펴보겠다. 첫 번째 View Controller에서 두 번째 View Controller로 이동, 다시 첫 번째 View Controller로 이동할 때 호출되는 함수의 순서를 보여준다. 아래 내용을 읽기 전에 viewDidLoad는 메모리에 올려질 때 호출된다는 점을 기억하는 것이 좋다.

```
1st viewDidLoad
1st viewWillAppear
1st viewDidAppear
========================
1st viewWillDisappear
2nd viewDidLoad
2nd viewWillAppear
1st viewDidDisappear
2nd viewDidAppear
========================
2nd viewWillDisappear
1st viewWillAppear
2nd viewDidDisappear
1st viewDidAppear
```

개별 View Controller를 순서대로 잘라서 정리하면 아래와 같다.

```
첫 번째 View Controller

1st viewDidLoad
1st viewWillAppear
1st viewDidAppear
1st viewWillDisappear
1st viewDidDisappear
1st viewWillAppear
1st viewDidAppear

두 번째 View Controller

2nd viewDidLoad
2nd viewWillAppear
2nd viewDidAppear
2nd viewWillDisappear
2nd viewDidDisappear
```

![https://static.packt-cdn.com/products/9781783550814/graphics/0814OT_06_02.jpg](https://static.packt-cdn.com/products/9781783550814/graphics/0814OT_06_02.jpg)

순환은 대체로 위 이미지에서 viewDidLoad와 viewDidDisappear 순서로 반복된다. 잘 살펴보면 반드시 그렇지는 않다. 첫 번째 View Controller의 viewDidLoad는 처음 한 번만 등장한다. 패턴을 더 확실하게 보고싶기도 하고, 두 번째 View Controller의 viewDidLoad의 호출을 보고 싶어서 직접 다시 해봤다. 첫 번째 View Controller에서 두 번째 View Controller로 이동했다가 다시 돌아오고 한 번 더 반복함으로써 확인해봤다. 아래 결과가 나왔다.

```
1st viewDidLoad()
1st viewWillAppear()
1st viewDidAppear()
2nd viewDidLoad()
1st viewWillDisappear()
2nd viewWillAppear()
1st viewDidDisappear()
2nd viewDidAppear()
2nd viewWillDisappear()
1st viewWillAppear()
2nd viewDidDisappear()
1st viewDidAppear()
2nd viewDidLoad()
1st viewWillDisappear()
2nd viewWillAppear()
1st viewDidDisappear()
2nd viewDidAppear()
2nd viewWillDisappear()
1st viewWillAppear()
2nd viewDidDisappear()
1st viewDidAppear()
```

다시 한 번 첫 번째와 두 번째로 나눠보겠다.

```
첫 번째 View Controller

1st viewDidLoad()
1st viewWillAppear()
1st viewDidAppear()
1st viewWillDisappear()
1st viewDidDisappear()
1st viewWillAppear()
1st viewDidAppear()
1st viewWillDisappear()
1st viewDidDisappear()
1st viewWillAppear()
1st viewDidAppear()

두 번째 View Controller

2nd viewDidLoad()
2nd viewWillAppear()
2nd viewDidAppear()
2nd viewWillDisappear()
2nd viewDidDisappear()
2nd viewDidLoad()
2nd viewWillAppear()
2nd viewDidAppear()
2nd viewWillDisappear()
2nd viewDidDisappear()
```

첫 번째 View Controller만 viewDidLoad가 한 번만 출력되고, 두 번째 View Controller는 두 번째 View Controller로 이동할 때마다 viewDidLoad가 호출된다. Navigation Bar를 이해해야 알 수 있다. Stack 구조이며, 두 번째 View Controller가 사라질 때 메모리에서 아예 사라지기 때문에 두 번째 View Controller에 다시 이동할 때는 메모리에 다시 올려지면서 viewDidLoad가 호출된다. push와 pop을 떠올리면 이해하기 쉽다. Life Cycle에 대한 이해가 있어야 인스턴스 생성 및 제거로 메모리 낭비를 하지 않도록 구현할 수 있다.
