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



# PhotoFrame step5

>  ViewController 프로그래밍
스토리보드 구성 요소와 클래스 코드와 연결해서 동작을 확장한다.
실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

- ***학습꺼리***
### # 화면 전환이 이루어지는 사이에 뷰컨트롤러 라이프사이클이 어떻게 변화하는지 학습한다.
화면 전환이 될 때 viewDidLoad(), viewWillAppear()이 호출되고,
이후 닫기 버튼을 누르면 viewWillDisappear(), viewDidDisappear()이 호출된다.

컨트롤러 상태 변화에 따른 API를 그림으로 보면 다음과 같다.

<img src="/img/viewController_state.png" width="30%" height="30%">


### # YellowViewController에서 Segue를 제거하고 다음 화면을 보여줄 때 코드로 보여주는 방법을 찾아보고 적용해본다.
Segue를 제거하고, SkyBlueViewController를 만들어서 파란색 화면 Scene과 연결시켰다. 그리고 다음 버튼에 IBAction을 연결 시켜서 버튼을 눌렀을 때 다음 화면인 YellowViewController를 부르도록 만들었다.

```swift
class SkyBlueViewController: UIViewController {

@IBAction func nextButtonTouched(_ sender: Any) {
if let skyBlueView = self.storyboard?.instantiateViewController(withIdentifier: "YellowViewController") {
self.present(skyBlueView, animated: true, completion: nil)
}
}
```


- ***실행 화면***

<img src="/img/viewController1.png" width="30%" height="30%">  <img src="/img/viewController2.png" width="30%" height="30%">
<img src="/img/viewController3.png" width="30%" height="30%">  <img src="/img/viewController4.png" width="30%" height="30%">

---



# PhotoFrame step6

>  Container ViewController
뷰컨트롤러 컨테이너 강의 슬라이드를 읽고 학습한다.
내비게이션 컨트롤러(Navigation Controller)를 Embed 시켜서 동작하도록 개선한다.
실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

- ***학습꺼리***
### # 뷰컨트롤러 컨테이너 동작을 이해한다.

### # 뷰컨트롤러 컨테이너는 또 어떤 클래스가 있는지 찾아보고 학습한다.
```
- 네비게이션 컨트롤러 (UINavigationController)
- 탭 바 컨트롤러 (UITabBarController)
- 테이블 뷰 컨트롤러 (UITableViewController)
- 페이지 뷰 컨트롤러 (UIPageViewController)
- 스필릿뷰 컨트롤러 (UISplitViewController)
- 팝오버 컨트롤러 (UIPopoverController)
```

### # 내비게이션 컨트롤러가 있을 경우와 없을 경우 화면 전환 동작이 어떻게 다른지, 화면들 포함관계가 있는지 학습한다.
내비게이션 컨트롤러가 있을 경우 우측에서 화면이 들어오면서 전환되고, 없을 경우 하단에서 화면이 들어오면서 전환된다.
내비게이션 컨트롤러는 root 뷰 컨트롤러와 연결되어 있고, 자식 뷰 컨트롤러들이 추가되는 형태로 구성되었다.

### # 내비게이션 컨트롤러 관련 메서드가 왜 push / pop 인지 학습한다.
내비게이션 컨트롤러의 자식 뷰 컨트롤러는 stack처럼 관리된다. 따라서 관련 메서드 네이밍도 push / pop으로 되어있다.
```swift
@IBAction func nextButtonTouched(_ sender: Any) {
if let skyBlueView = self.storyboard?.instantiateViewController(withIdentifier: "YellowViewController") {
self.navigationController?.pushViewController(skyBlueView, animated: true)
}
}
```
```swift
@IBAction func closeButtonTouched(_ sender: Any) {
print("close button")
self.navigationController?.popViewController(animated: true)
}
```


- ***실행 화면***

<img src="/img/ContainerViewController1.png" width="30%" height="30%">  <img src="/img/ContainerViewController2.png" width="30%" height="30%">
<img src="/img/ContainerViewController3.png" width="30%" height="30%">  <img src="/img/ContainerViewController4.png" width="30%" height="30%">

---



# PhotoFrame step7

>  Second Scene 화면
사진액자 - Container ViewController 요구사항을 구현한 상태로 시작한다.
탭바의 두 번째 화면 (Second Scene) 디자인을 변경하고 액자 앱을 동작을 구현한다.
실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

```swift
@IBOutlet weak var photoImageView: UIImageView!
@IBAction func nextImageButtonTouched(_ sender: Any) {
let randomNumber: UInt32 = arc4random_uniform(22) + 1;
self.photoImageView.image = UIImage(named: randomNumber < 10 ? "0\(randomNumber).jpg" : "\(randomNumber).jpg")
}
```

- ***학습꺼리***
### # UIImageView 와 UIImage 클래스는 각각 어떤 역할을 담당하는지 학습한다.
UIImage 클래스는 가져올 이미지를 지정해주고, UIImageView는 이미지를 출력해 줄 컴포넌트 역할을 한다.
### # 이미지 뷰의 속성은 어떤 것들이 있는지 애플 개발자 문서를 참고한다.
<img src="/img/imageViewProperty.png" width="30%" height="30%">


- ***실행 화면***

<img src="/img/SecondScene1.png" width="30%" height="30%">  <img src="/img/SecondScene2.png" width="30%" height="30%">  <img src="/img/SecondScene3.png" width="30%" height="30%">

---


# PhotoFrame step8

>  마무리
사진액자 - Second Scene 요구사항을 구현한 상태로 시작한다.
이미지 테두리 액자 화면을 추가한다.
사진 앨범에서 사진을 가져와서 보여줄 수 있도록 개선한다.
실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

```swift
@IBAction func selectButtonTouched(_ sender: Any) {
    let picker = UIImagePickerController()
    picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
    picker.allowsEditing = true
    picker.delegate = self
    self.present(picker, animated: false, completion: nil)
}
func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
        self.photoImageView.image = selectedImage
        print(selectedImage)
        picker.dismiss(animated: false, completion: nil)
    }
}
func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    picker.dismiss(animated: false, completion: nil)
    let alert = UIAlertController(title: "", message: "이미지 선택이 취소되었습니다.", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: nil))
    self.present(alert, animated: false, completion: nil)
}
```

- ***학습꺼리***
### # 화면 요소들을 겹쳐서 디자인 하는 경우 z축으로 위-아래를 구분해서 학습한다.
### #UIImagePickerController처럼 이미 만들어놓은 시스템 컨트롤러들에 대해 학습한다.
: 시스템 컨트롤러는 시스템 인터페이스를 관리하는 컨트롤러로써 앱에서 쉽게 시스템 컨텐츠에 접근할 수 있도록 해준다. <br  />
UIImagePickerController 뿐만 아니라 View, Navigation, Search, Document Browser, PrintPicker 등 다양한 시스템 컨트롤러가 있다.<br  />
( 참고: https://developer.apple.com/documentation/uikit/view_controllers )<br  /><br  />
### #델리게이트(Delegate)와 프로토콜(Protocol) 상관 관계에 대해 학습한다.
프로토콜은  델리게이트 패턴을 구현하기 위해 사용한다고 한다.<br  />
델리게이트를 구현한다는 것은 클래스가 델리게이트 프로토콜을 구현한다고 선언하고, 그 프로토콜의 메서드 중 원하는 메서드를 구현하는 것이다.<br  />
참고문서: http://aroundck.tistory.com/4671 [돼지왕 왕돼지 놀이터] <br  />


- ***실행 화면***

<img src="/img/last1.png" width="30%" height="30%">  <img src="/img/last2.png" width="30%" height="30%">  <img src="/img/last3.png" width="30%" height="30%">    <img src="/img/last4.png" width="30%" height="30%">


- ***phone에서 테스트 화면***

<img src="/img/phone1.png" width="30%" height="30%">  <img src="/img/phone2.png" width="30%" height="30%">  <img src="/img/phone3.png" width="30%" height="30%">  <img src="/img/phone4.png" width="30%" height="30%">  <img src="/img/phone5.png" width="30%" height="30%">  <img src="/img/phone6.png" width="30%" height="30%">  <img src="/img/phone7.png" width="30%" height="30%">  <img src="/img/phone8.png" width="30%" height="30%">  <img src="/img/phone9.png" width="30%" height="30%">


---


