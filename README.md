# PhotoFrame App

## Step1 - 시작하기 Tabbed App 템플릿

1. 프로그래밍 요구사항
	- 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.
2. UITabBarController와 UITabBar에 대해 학습한다.
3. UITabBar와 UITabbarController의 차이점은 무엇인가?

### 진행사항 (완성날짜: 2018/05/24 14:00)
![step1](./images/step1_0.png)


## Step2 - IBOutlet

1. 프로그래밍 요구사항
	- Xcode 프로젝트 내비게이터에서 Main.storyboard 파일을 선택하고 First Scene 에 있는 'First View' 레이블(Label)을 선택하고 Assistant Editor 모드로 변경한다.
	- 레이블을 선택하고 Control + 드래그해서 ViewController 코드에 IBOutlet으로 연결한다.
	- 코드로 Label의 속성을 변경해본다. (글자색, 배경색, 투명도, 글자 크기)
2. UILabel클래스 속성(property)는 어떤게 있는지 학습한다.

### 진행사항 (완성날짜: 2018/05/25 12:07)
![setp2](./images/step2_0.png)


## Step3 - IBAction

1. 프로그래밍 요구사항
	- Main.storyboard 에서 First Scene에 UIButton을 추가한다.
	- 버튼을 ViewController 코드에 IBAction으로 연결한다.
	- `nextButtonTouched()`메소드를 구현한다.(textColor, backgroundColor, alpha 속성 변경)
2. 학습꺼리에 대한 짧은 요약
	- IBAction과 IBOutlet 연결 구조에 대해 이해한 내용을 정리한다.
		- IBAction : 인터페이스빌더의 뷰로부터 이벤트 발생 시 뷰컨트롤러의 액션메서드를 통해 이벤트처리를 위해 사용. (특히 IBAction은 UIControl클래스를 상속받은 클래스들만 연결가능)
		- IBOutlet : 뷰컨트롤러에서 인터페이스빌더에 있는 뷰에 대한 참조. 이를 통해 뷰컨트롤러에서 인터페이스빌더에 있는 뷰에 접근하고 뷰를 업데이트하고 수정할 수 있다.
		- 뷰에서 발생한 이벤트를 IBAction을 통해 받고 액션메소드를 통해 처리 후 IBOutlet에 대한 접근을 통해 뷰를 업데이트한다.
	- 버튼에 IBAction을 추가할 때 이벤트(Event) 종류에는 어떤 것들이 있는지 학습한다.
		![](./images/step3_1.png)
		- 대부분 `UIControlEvents` 구조체에 정의되어 있다. (IBAction으로는 못받는 event도 있다.)
	- 버튼에 액션을 여러개 추가할 수 있을까?
		- 하나만 추가했을 때의 방법으로 여러 개를 추가할 수 있다.
	- 버튼이 여러일 때 하나의 액션에 추가할 수 있을까?
		- 있다. 액션메서드에서 `sender`를 인자로 받기 때문에 여러 버튼이 하나에 액션에 연결되어 있어도 액션안에서 sender를 통해 구분가능하다.

### 진행사항 (완성날짜: 2018/05/26 11:00)
![setp3_0](./images/step3_0.gif)


## Step4 - Scene과 Segue

1. 프로그래밍 요구사항
	- Main 스토리보드에서 First Scene 옆에 ViewController를 드래그해서 새로운 Scene을 추가한다.
	- 앞 단계에서 추가한 [다음]버튼을 선택하고 Control + 드래그를 해서 새로 추가한 Scene에 연결한다.
	- 새로 추가한 Scene 속성에서 배경 색상(Background Color)을 원하는 색상으로 변경한다. 새로 앱을 실행해보고 [다음] 버튼을 누르면 새로운 화면이 나타나는지 확인한다.
	- 다시 스토리보드에서 위에 추가한 Scene (혹은 ViewController)에 [다음] 버튼을 추가한다. 우측 옆에 한 단계 더 표현하기 위한 ViewController를 추가하고 배경 색상을 다른 색상으로 변경한다. 위와 마찬가지로 [다음]버튼에서 새 Scene으로 Segue를 연결한다.
	- 예를 들어 First Scene 다음에 추가한 화면이 Yellow 화면이었다면, First Scene에서 [다음] 버튼을 누르면 Yellow 화면이 표시되고, Yellow 화면에서 [다음] 버튼을 누르면 Blue 화면이 나오는 방식으로 두 단계 표시한다.
	
### 진행사항 (완성날짜: 2018/05/28 17:14)
![step4_0](./images/step4_0.png)


## Step5 - ViewController 프로그래밍

1. 프로그래밍 요구사항
	- 프로젝트에 새로운 ViewController 클래스를 추가한다. File > New... > File... 메뉴를 선택한다. 다음과 같은 화면에서 Cocoa Touch Class를 선택한다.
	- UIViewController에서 상속받도록 입력하고, 원하는 클래스명을 입력한다. (예시 YellowViewController)
	- 스토리보드에서 YellowViewController 화면에 [닫기] 버튼을 추가한다.
	- Assistant Editor를 선택하고 [닫기] 버튼에 대한 IBAction 액션을 연결한다.
	- ViewController를 dismiss하는 action method를 구현한다.
	- 위와 동일하게 세 번째 추가한 화면에 대해 ViewController 클래스를 지정하고, [닫기]버튼을 추가하고, 액션을 연결해서 화면을 닫는 동작이 동작하도록 구현한다.
	- 뷰 컨트롤러 강의 자료에 있는 화면 관련 콜백 함수들에 모두 print(#file, #line, #function, #column) 코드를 추가한다.
		- viewWillAppear()
		- viewDidAppear()
		- viewWillDisappear()
		- viewDidDisappear()
		
2. 학습꺼리
	- 화면전환의 사이에 뷰컨트롤러 라이프사이클이 어떻게 변화하는지 확인한다.
	- YelloViewController에서 Segue를 제거하고 코드로 다음화면을 보여주는 방법을 찾고 적용한다.
	
### 진행사항 (완성날짜: 2018/05/28 21:51)
![setp5_0](./images/step5_0.png)