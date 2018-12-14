# 시작하기 - Tabbed App 템플릿

출력내용

/Users/hngfu/Documents/swift-photoframe/PhotoFrame/PhotoFrame/FirstViewController.swift 18 viewDidLoad() 40
/Users/hngfu/Documents/swift-photoframe/PhotoFrame/PhotoFrame/SecondViewController.swift 17 viewDidLoad() 40

## 스텝2

#file - 해당 메서드가 있는 파일의 경로 및 파일명

#line - 호출 되는 곳이 위에서 몇번째 줄에 있는지
#function - 해당 메서드의 이름
#column - 호출되는 곳이 왼쪽에서 몇번째에 있는지 

#### UILabel 클래스 속성(Property)는 어떤게 있는지

var text: String? - Label 글자를 나타낸다.
var textColor: UIColor! - Label 글자의 색상을 나타낸다.
var backgroundColor: UIColor? - Label의 배경색을 나타낸다.
var alpha: CGFloat - Label의 투명도를 나타낸다.
var font: UIFont! // default is nil (system font 17 plain) - Label의 폰트 관련된 속성을 담당.

- 스텝2 사진
![step2](https://user-images.githubusercontent.com/38850628/49932117-98517b00-ff0b-11e8-8186-c2641baeb5e8.png)

## 스텝3

- 버튼에 IBAction을 추가할 때 이벤트(Event) 종류에는 어떤 것들이 있는지
메서드 이름 설정, 어떠한 상황에서 메서드를 실행할지(예를들어 손가락을 뗏을때 실행한다.)

- 버튼에 액션을 여러개 추가할 수 있을까? 추가할 수 있다.
![](https://user-images.githubusercontent.com/38850628/49980196-d0050500-ff95-11e8-9c8e-4ebbb9319c9a.png)

- 버튼이 여러일 때 하나의 액션에 추가할 수 있을까? 추가할 수 있다.
![](https://user-images.githubusercontent.com/38850628/49980315-528dc480-ff96-11e8-9a2d-ccc504a7a4e4.png)

- 스텝3 변경 전 사진
![stepBefore](https://user-images.githubusercontent.com/38850628/49979836-2ffaac00-ff94-11e8-8284-ecbd9bf5c499.png)

- 스텝3 변경 후 사진
![step3After](https://user-images.githubusercontent.com/38850628/49979837-2ffaac00-ff94-11e8-8627-668274c58adb.png)

## 스텝4
- Seque에 액션에 있는 여러 항목들은 어떤 효과가 있는지

일단 가장먼저 scene이 아래에서 위로 올라오는 애니메이션 효과가 default로 되어있는데 애니메이션 효과를 끌 수 있다.
그리고 식별자를 지정하거나 클래스를 연결해줄 수 있다.

모달형식, 팝업형식으로 띄우도록 설정 가능하다.

- 버튼을 이용해 segue를 연결하는 방법 말고도 manual segue라고 컨트롤러를 이용하여 연결하는 방법도 있다.

- 스텝4 새로운 화면
![](https://user-images.githubusercontent.com/38850628/49981137-d09f9a80-ff99-11e8-8b2a-c0f09478e2f6.png)

## 스텝5

- 화면 전환이 이루어지는 사이에 뷰컨트롤러 라이프사이클이 어떻게 변화하는지 학습한다.

GreenViewController.swift 20 viewWillAppear 40
GreenViewController.swift 24 viewDidAppear 40
GreenViewController.swift 28 viewWillDisappear 40
YellowViewController.swift 20 viewWillAppear 40
YellowViewController.swift 24 viewDidAppear 40
GreenViewController.swift 32 viewDidDisappear 40

초록화면 WillDisappear가 나오고 노랑화면이 Appear되고 초록화면 DidDisappear이 나온다.
*DidDisappear은 다음 뷰가 Will,DidAppear된 후 콜백된다.*

