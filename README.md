# PhotoFrame  

## step1. Tabbed App 템플릿(19.03.12)

<img width="1440" alt="스크린샷 2019-03-12 오후 5 21 53" src="https://user-images.githubusercontent.com/31604976/54185320-0ba76080-44ec-11e9-9cb2-4b44df2731ee.png">

file : /Users/jina/github/swift-photoframe/PhotoFrame/PhotoFrame/FirstViewController.swift  

line : 16  

function : viewDidLoad()  

column : 40 (16번 행의 40번 열에 있다. #column이 시작되는 곳이 40번이다.)  

### UITabBarController 와 UITabBar
- UITabBarController
버튼을 눌렀을 때 보여질 자식 컨트롤러를 결정하는 라디오 스타일의 선택 장치로 윈도우 하단에 각각 다른 모드를 선택하도록 표시한다. 
사용자가 특정 탭을 누르면 해당 뷰 컨트롤러로 대체되며, 서로 다른 유형의 정보를 표시하거나 완전히 다른 스타일의 인터페이스를 사용하여 동일한 정보를 표시하기 위해 사용된다.

- UITabBar
앱에서 하위 잡업이나 모드 선택을 위해 하나 또는 하나이상의 버튼을 표시하는 컨트롤.
UITabBarController와 사용되지만, 독립적으로 사용할 수 있다. 

------------------------------------------------------------------------------------------------------------------------

UITabBarController는 버튼을 눌렀을 때 대체될 뷰를 보여주는 역할을 하고 UITabBar는 버튼자체를 프로그래머가 디자인 하고 보여주는 역할을 한다.


## step2. IBOutlet
<img width="547" alt="스크린샷 2019-03-13 오후 9 46 30" src="https://user-images.githubusercontent.com/31604976/54280188-3b349680-45da-11e9-9284-46804be03d75.png">

## step3. IBAction

다음 버튼을 추가하여 버튼을 누르면 '노리의 사진액자' 배경색 변경

<video width="400" src="/Users/jina/Desktop/화면 기록 2019-03-19 오후 5.33.12.mov"></video>



- IBAction 과 IBOutlet

IB = Interface Builder 

: 간단하게 드래그앤드롭만으로 윈도우,버튼,텍스트필드 등의 객채를 사용자 인터페이스 기능을 만들어 다이나믹한 동작을 만들수 있게 해준다.

Cocoa와 Cocoa Touch는 MVC패턴을 이용하여  인터페이스를 독립적으로 구현하고 기능을 분리하기 쉽기 때문이다.

MVC 패턴이란 데이터를 소유한 Model과 사용자에게 보여지는 View 그리고 View에서 발생되는 Event를 받아서 Model을 갱신하는 Controller를 의미하는데 View와 ViewController를 연결해주는 역할을 하는 것이 IBAction과 IBOutlet이다

IBAction : View에서 Event가 발생되었을 때 호출되는 함수  

IBOutlet : Button 등 View의 Controller에 접근하기 위한 변수