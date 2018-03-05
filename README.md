# PhotoFrame step1

>  시작하기 - Tabbed App 템플릿
자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.

---

- ***코드 작성***
```swift
class FirstViewController: UIViewController {

override func viewDidLoad() {
super.viewDidLoad()
print(#file, #line, #function, #column)
}
}
```

- ***콘솔 화면***
<img src="/img/FirstConsole.png" width="80%" height="50%">
<img src="/img/SecondConsole.png" width="80%" height="50%">


- ***실행 화면***

<img src="/img/FirstViewScreen.png" width="30%" height="40%">   <img src="/img/SecondViewScreen.png" width="30%" height="40%">


###  # 애플 UIKit View Management 클래스 중에서 UITabBarController 와 UITabBar에 대해 학습한다.

1. ***UITabBarController***
: 탭바를 누를 때 어떤 화면을 보여줄지 결정 하는 Controller

Main.storyboard를 클릭하면 다음과 같은 화면이 뜬다.

<img src="/img/TabBarController.png" width="50%" height="50%" float="right">

탭바 버튼 선택에 FirstView를 보여줄지, SecondView를 보여줄지를 Controller에서 뻗어나가는 화살표로 이미지화 시켜서 보여주고 있다.
Main.storyboard 오른쪽 마우스클릭 후 Open As > Source Code를 클릭하면 소스코드로도 볼 수 있는데,

```swift
<tabBarController id="49e-Tb-3d3" sceneMemberID="viewController">
<tabBar key="tabBar" contentMode="scaleToFill" id="W28-zg-YXA">
<rect key="frame" x="0.0" y="975" width="768" height="49"/>
<autoresizingMask key="autoresizingMask" widthSizable="YES" flexibleMinY="YES"/>
<color key="backgroundColor" red="0.0" green="0.0" blue="0.0" alpha="0.0" colorSpace="custom" customColorSpace="sRGB"/>
</tabBar>
<connections>
<segue destination="9pv-A4-QxB" kind="relationship" relationship="viewControllers" id="u7Y-xg-7CH"/>
<segue destination="8rJ-Kc-sve" kind="relationship" relationship="viewControllers" id="lzU-1b-eKA"/>
</connections>
</tabBarController>
```

firstView의 ID는 `9pv-A4-QxB`로, SecondView의 ID는  `8rJ-Kc-sve`로 각각 버튼을 누르면 연결할 수 있도록 설정되었다.


2. ***UITabBar***
: 탭 바에 하나 이상의 버튼을 표시하는 Controller

```swift
<tabBar key="tabBar" contentMode="scaleToFill" id="W28-zg-YXA">
<rect key="frame" x="0.0" y="975" width="768" height="49"/>
<autoresizingMask key="autoresizingMask" widthSizable="YES" flexibleMinY="YES"/>
<color key="backgroundColor" red="0.0" green="0.0" blue="0.0" alpha="0.0" colorSpace="custom" customColorSpace="sRGB"/>
</tabBar>
```
Background, Shadow, Selection, Image Tint, Style, Bar Tint, Item Positioning를 설정할 수 있다.

---



# PhotoFrame step2

>  IBOutlet
First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결하고 속성을 바꿔본다.

---

- ***코드 작성***
```swift
@IBOutlet weak var firstLabel: UILabel!
@IBOutlet weak var firstDescription: UILabel!
override func viewDidLoad() {
super.viewDidLoad()
self.firstLabel.text = "Elly의 사진액자"
self.firstDescription.text = "글자색, 배경색, 투명도, 글자 크기를 바꿔본 Description"
self.firstDescription.textColor = UIColor.white
self.firstDescription.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
self.firstDescription.font = UIFont.boldSystemFont(ofSize: 15)

print(#file, #line, #function, #column)
}
```


- ***실행 화면***

<img src="/img/IBOutlet.png" width="30%" height="30%">

---


# PhotoFrame step3

>  IBAction
First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.

---

- ***학습꺼리***
### # 버튼에 IBAction을 추가할 때 이벤트(Event) 종류에는 어떤 것들이 있는지 학습한다.

<img src="/img/IBAction_event.png" width="30%" height="30%">

```
- Did End On Exit: 키보드의 Return 키 눌렀을 때
- Editing Changed: 내용이 변경되었을 때
- Editing Did Begin: 포커스가 들어왔을 때
- Editing Did End: 포커스가 나갔을 때
- Primary Action Triggered
- Touch Cancel: 다른 터치 이벤트를 취소
- Touch Down: 버튼을 한 번 누를 때 이벤트
- Touch Down Repeat: 버튼을 두 번 이상 누를 때 이벤트
- Touch Drag Enter: 손가락이 컨트롤의 경계로 드래그
- Touch Drag Exit: 컨트롤 내에서 손가락이 경계 밖으로 드래그
- Touch Drag Inside: 컨트롤의 범위 내에서 손가락을 드래그
- Touch Drag Outside: 손가락이 컨트롤의 바깥 쪽에서 드래그
- Touch Up inside: 손가락이 컨트롤의 경계 안에 있을 때 손가락을 떼면 동작
- Touch Up Outside: 손가락이 컨트롤의 경계 밖에 있을 때 손가락을 떼면 동작
- Value Changed: 터치를 드래그하거나 다른 방법으로 조작하여 일련의 다른 값을 방출
```
[참고]

https://developer.apple.com/documentation/uikit/uicontrolevents
http://susemi99.tistory.com/984

### # 버튼에 액션을 여러개 추가할 수 있을까?
: 여러개 추가할 수는 있으나 제일 마지막 IBAction이 실행된다.
```swift
@IBAction func nextButtonTouched(_ sender: Any) {
self.firstLabel.textColor = UIColor.blue
self.firstLabel.backgroundColor = UIColor.yellow
self.firstLabel.alpha = 0.5
}

@IBAction func prevButtonTouched(_ sender: Any) {
self.firstLabel.textColor = UIColor.cyan
self.firstLabel.backgroundColor = UIColor.darkGray
self.firstLabel.alpha = 0.5
}
```

### # 버튼이 여러일 때 하나의 액션에 추가할 수 있을까?
: 하나의 액션에 여러개의 버튼을 추가할 수 있다.
만들어둔 하나의 메소드에 여러번 접근할 수 있듯, 하나의 액션도 여러개의 버튼을 추가할 수 있는 것 같다.


- ***실행 화면***

<img src="/img/IBAction_before.png" width="30%" height="30%">  <img src="/img/IBAction_after.png" width="30%" height="30%">

---



# PhotoFrame step4

> Scene과 Segue
스토리보드 구성 요소에 대해 학습하고 새로운 Scene과 Segue를 추가한다
실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

---

- ***학습꺼리***
### # Segue에 액션에 있는 여러 항목들은 어떤 효과가 있는지 값을 바꿔보며 실행해서 학습한다.

<img src="/img/segue.png" width="30%" height="30%">

```
- Show: 새로운 화면을 보여줌
- Show Detail: Show와 비슷해 보이나 세부 컨텐츠를 보여줄 때 쓰이는 것 같다.
(UISplitViewController객체 내부에 포함 된 뷰 컨트롤러에만 관련된 새로운 컨텐츠를 보여줌.)
- Present Modally: 지정된 표현 및 전환 스타일을 사용하여보기 컨트롤러를 Modal로 표시해준다.
- Present As Popover: 수평적으로 일정한 환경에서는 팝업으로, 압축된 환경에서는 Modal로 표시해준다.
- Custom: 제공하는 segue 액션 외에 개발자가 원하는대로 만들 수 있음.
```


- ***실행 화면***

<img src="/img/scene1.png" width="30%" height="30%">  <img src="/img/scene2.png" width="30%" height="30%">  <img src="/img/scene3.png" width="30%" height="30%">

---


