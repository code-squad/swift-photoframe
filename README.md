# PHOTO FRAME

- (바뀐 화면 이미지, 핵심 기능 설명)과 완성 날짜시간을 기록한다.
- 실행한 화면을 캡처해서 readme.md 파일에 포함한다.

<br>

[STEP 11-1](#step-11-1-tabbed-app-템플릿)

[STEP 11-2](#step-11-2-iboutlet)

[STEP 11-3](#step-11-3-ibaction)

[STEP 11-4](#step-11-4-scene과-segue)

[STEP 11-5](#step-11-5-viewcontroller-프로그래밍)

   

## STEP 11-1 Tabbed App 템플릿

<br>

### 실행 결과

![image-20190710184856258](./assets/image-20190710184856258.png)

- 첫번째 탭: FirstViewController
- 두번째 탭: SecondViewController

<br>

### UITabBarController

> radio-style 선택 인터페이스를 관리하기 위한 컨테이너 뷰 컨트롤러. 선택시 표시할 차일드 뷰 컨트롤러를 결정한다.

<br>

#### Declaration

```swift
class UITabBarController: UIViewController
```

<br>

#### Overview

탭 바 인터페이스는 스크린의 아래에 탭을 표시해 여러 다른 모드를 선택하고 해당 모드의 뷰를 보여준다.

이 클래스는 일반적으로 있는 그대로 사용되지만 서브클래싱될 수도 있다. 

탭 바 컨트롤러 인터페이스의 각각의 탭들은 커스텀 뷰 컨트롤러와 연관되어 있다. 

사용자가 특정 탭을 선택하면 탭 바 컨트롤러는 이전의 모든 뷰를 대체하면서 해당 뷰 컨트롤러의 루트 뷰를 보여준다. (이전에  어떤 탭이 선택되어있든지 유저가 tap을 하면 항상 해당 탭의 루트뷰를 보여준다. 탭이 이미 선택되어 있는 경우에도 마찬가지이다.)

탭을 선택하는 것은 인터페이스의 컨텐츠를 대체하기때문에 각 탭에서 관리되는 인터페이스의 타입이 유사할 필요는 없다. 

탭 바 인터페이스는 보통 다른 타입의 정보를 보여주거나 같은 정보를 완전히 다른 스타일의 인터페이스로 보여줄 때 이용된다. 

탭바 컨트롤러에서는 탭바 뷰에 직접적으로 접근을 할 수 없다. 

탭바 컨트롤러의 탭들을 관리하기 위해서는 각 탭의 루트뷰를 제공하는 뷰 컨트롤러를 뷰 컨트롤러의 프로퍼티로 지정해야 한다.

뷰 컨트롤러들을 특정하는 순서가 탭 바에 나타나는 순서가 된다. 

프로퍼티를 설정할 때, 초기에 어떤 뷰 컨트롤러가 설정되어있는지 나타내는 `selectedViewController` 프로퍼티에 값을 할당해야한다. 

<br>

#### The views of a Tab Bar Controller

`UITabBarController` 클래스는 `UIViewController` 클래스를 상속받기 때문에, 탭 바 컨트롤러는 `view` 속성을 통해 접근할 수 있는 탭 바 컨트롤러의 뷰를 갖는다.

탭 바 컨트롤러를 위한 뷰는 탭바 뷰와 커스텀 컨텐츠를 포함하고 있는 뷰의 컨테이너일 뿐이다. 

탭 바 뷰는 사용자와 한 개 이상의 탭 바 아이템을 위한 선택 컨트롤을 제공한다. 

탭바의 아이템들과 툴바 뷰가 바뀌더라도 이들을 관리하는 뷰들은 바뀌지 않는다. 

현재 선택된 탭을 보여주기 위해 커스텀 컨텐츠 뷰만이 바뀐다. 



<br>

### UITabBar

> 앱의 다른 서브태스크, 뷰들, 모드들을 선택하기 위해 탭바에 하나 이상의 버튼을 표시하는 컨트롤

<br>

#### Declaration

```swift
class UITabBar: UIView
```

<br>

#### Overview

보통, 탭 바는 `UITabBarController` 오브젝트와 결합해서 사용한다. 그러나 앱에서 UITabBar를 독립적으로 사용할 수도 있다. 

탭 바는 항상 스크린의 아래 가장자리에 나타나고 하나 이상의 `UITabBarItem` 오브젝트를 보여준다. 

인터페이스의 요구에 맞게 탭바의 모양은 배경 이미지 또는 틴트 색깔등을 변경할 수 있다.

<br>

#### Responding to Tab Selections

탭바 컨트롤러와 연결된 탭바는 컨트롤러가 자동으로 선택 항목을 관리하고 적절한 뷰 컨트롤러를 보여준다.

유일하게 선택 항목을 직접 관리해야할 때는 탭 바 컨트롤러 없이 탭바를 생성했을 때이다. 

탭바는 선택 변경에 대해 응답할 수 있는 델리게이트 오브젝트의 `tabBar(_:didSelect:)` 메서드에 선택항목을 보고한다. 

<br>



### UIViewController와 UIView의 차이점

- 뷰는 스크린에 그리기 위한 오브젝트. 다른 서브뷰들을 포함할 수도 있다. 

- 터치 이벤트를 갖고 시각적 상태를 변경할 수 있다.

- 뷰는 앱의 구조를 알지 못하고 디스플레이에게 어떤 상태만을 말해준다.

  

- 뷰컨트롤러는 스크린에 직접적으로 그리지 못한다. 뷰 오브젝트들의 모음을 관리한다. 
- 뷰 컨트롤러는 보통 여러개의 서브뷰들을 갖고 있는 한 개의 view 를 갖고 있다. 
- 뷰 컨트롤러는 이 뷰들의 상태를 관리한다. 
- 뷰컨트롤러는 앱의 내부 동작을 알 수 있다. 뷰 오브젝트에게 무엇을 해야할지와 어떻게 그들을 보여줄지 알려준다.



<br>

### UITabBarController와 UITabBar의 차이점

- UITabbar 객체는 뷰이기 때문에 데이터를 사용자에게 표시하고 사용자 입력을 허용하는 방법을 알고 있다.
- UITabBar는 UIView의 하위 클래스이며 사용자에게 탭 항목 목록을 표시하고 사용자가 탭과 상호 작용할 때 사용자에게 피드백을 표시하는 방법이다.



- UITabbarController 객체는 컨트롤러이기때문에 사용자에게 표시 할 데이터와 사용자 입력으로 수행할 작업을 알고 있다. 
- UITabBarController는 UIViewController의 하위 클래스이며 사용자에게 표시 할 탭과 사용자가 탭을 선택할 때 수행 할 작업을 알고 있다

<br>



## STEP 11-2 IBOutlet

<br>

### 실행 결과

<img src = "./assets/Simulator Screen Shot - iPhone Xs - 2019-07-10 at 20.36.10.png" width="300" height="600">





<br>

### IBOutlet

> UI object에 메세지를 보내기 위해 필요한 연결을 위한 클래스 프로퍼티, 인터페이스 빌더와 연결을 위한 객체의 속성

- 코드가 유저 인터페이스 객체에 메세지를 보낼 수 있게 하려면 유저 인터페이스 객체에서 *outlet*이라고 불리는 클래스의 특수한 프로퍼티에 연결을 해야한다.
- Interface Builder는 아울렛에 대한 선언을 클래스에 추가하고 클래스 인스턴스를 아울렛에 연결한다. 
- IBOutlet 에서 IB는 Interface Builder

![image-20190710210542535](./assets/image-20190710210542535.png)

- IBOutlet은 default로 `weak`
  - `strong` 을 쓰는 경우: 복잡한 뷰 hierarchy를 가졌을 때, 중간에 있는 뷰가 dealloc 되면 하위뷰들도 같이 dealloc 된다. 그렇게 되면 의도치 않은 nil이 발생할 수 있다. 
  - 그렇지만 일반적인 상황에서는 `weak`가 메모리 관리 차원에서 유리하다.
  - 메모리가 부족하게 되면 메인 뷰를 nil 처리하게 되면서 main view와 subview들까지 dealloc 해서 메모리를 확보하게 된다. 이 때 strong이면 reference count가 절대 1 이하로 내려가지 않아서 parent 뷰가 dealloc 되어도 child view들은 dealloc 되지 않는다. 
- Outlet이 옵셔널로 선언되는 이유
  - 클래스나 구조체의 인스턴스가 초기화를 완료하기 전에 모든 저장 프로퍼티는 유효한 값을 가져야 한다.
  - 뷰는 뷰 컨트롤러가 초기화 된 후에 로드된다. 그렇기 때문에 뷰 컨트롤러 클래스에 정의된 아웃렛들도 뷰 컨트롤러가 초기화된 직후에 바로 값을 갖지 않는다.
  - 따라서 outlet은 implicitly unwrapped 옵셔널이다. (!)
  - outlet이 확실히 연결되어 있다는 것을 알고 있기 때문에 !를 사용할 수 있다.
  - 그러나 !로 사용했는데, 인터페이스 빌더와 아울렛을 연결하는 것을 까먹거나 하게되면 앱은 크래쉬가 나게 된다. 
  - 값을 설정하기 전에 아울렛 변수에 접근하는 것은 위험할 수 있다. 뷰 컨트롤러가 뷰를 로드하기 전이나 뷰를 로드하는 중에 아울렛 변수에 접근하게 되면 런타임 에러가 발생한다.
  - 필요에 따라 !, ? 를 사용

<br>

### UILabel Property

- var text: String? : 레이블이 표시할 문자열
  - text 프로퍼티에 값을 할당하면 attributedText 프로퍼티에도 똑같은 내용의 문자열이 할당
- var attributedText: NSAttributedString? : 레이블이 표시할 속성 문자열
  - NSAttributed 클래스를 사용한 속성 문자열 중 특정 부분의 속성을 변경 가능 (일부 글자만 변경 가능)
  - attributedText 프로퍼티에 값을 할당하면 text 프로퍼티에도 똑같은 내용의 문자열이 할당
- var textColor: UIColor! : 문자 색상
- var font: UIFont! : 문자 폰트
- var textAlignment: NSTextAlignment: 문자열의 가로 정렬
  - left, right, center, justified, natural
- var numberOfLines: Int : 문자를 나타내는 최대 라인 수
  - 기본값 1
  - 문자열을 모두 표시하고 싶을 때: 0
  - 최대 라인 수를 초과하면 lineBreakMode 프로퍼티의 값에 따라 적절히 잘라서 표현
  - adjustsFontSizeToFitWidth 프로퍼티 활용해 폰트 사이즈를 레이블의 넓이에 따라 자동 조절
- var baselineAdjustment: UIBaselineAdjustment: 문자열이 autoshrink 되었을 때의 수직 정렬 방식
  - Align Baseline: 문자가 작아졌을 때 기존 문자열의 기준선에 맞춤
  - Align Center: 작아진 문자의 중앙선에 맞춤
  - None: 기존 문자열의 위쪽 선에 맞춤
- var lineBreakMode: NSLineBreakMode: 레이블의 경계선을 벗어나는 문자열에 대응하는 방식
  - 기본값 Truncate tail
  - Character wrap: 여러 줄 레이블에 주로 적용, 글자 단위로 줄 바꿈을 결정
  - Word wrap: 여러 줄 레이블에 주로 적용, 단어 단위로 줄 바꿈을 결정
  - Truncate head: 한 줄 레이블에 주로 적용, 앞쪽 텍스트를 자르고 '...' 으로 표시
  - Truncate middle: 한 줄 레이블에 주로 적용, 중간 텍스트를 자르고 '...' 으로 표시
  - Truncate tail: 한 줄 레이블에 주로 적용, 끝쪽 텍스트를 자르고 '...' 으로 표시

<br>

## STEP 11-3 IBAction

<br/>

### 실행결과

- 초기화면

<img src = "./assets/Simulator Screen Shot - iPhone Xʀ - 2019-07-11 at 18.08.35.png" width = "300" height = "620">

- **다음** 버튼 터치







<img src = "./assets/Simulator Screen Shot - iPhone Xʀ - 2019-07-11 at 18.08.42.png" width = "300px" height = "620px">

- 오른쪽 **Button** 버튼 터치
  - Button -> TADA
  - TADA -> 쨔쟈쟈쟈쟌 등장

<img src = "./assets/Simulator Screen Shot - iPhone Xʀ - 2019-07-11 at 18.08.46.png" width = "300px" height = "630px">

- **Background** 버튼 드래그 (Drag Exit)

<img src = "./assets/Simulator Screen Shot - iPhone Xʀ - 2019-07-11 at 18.08.53.png" width="300px" height = "630px">

- **초기화** 버튼 터치

<img src = "./assets/Simulator Screen Shot - iPhone Xʀ - 2019-07-11 at 18.08.58.png" width = "300px" height = "630px">



### 버튼에 액션을 여러개 추가

- **Button** 버튼에는 nextButtonTouched(), tadaButtonTouched() 두가지 액션이 있다.
- 민디의 사진 액자와 Photo By Mindy 레이블을 띄운다.
- 자신의 텍스트를 TADA로 바꾸고 TADA 레이블은 💃쨔쟈쟈쟈쟌💃 으로 바꾼다.



### 버튼이 여러개일 때 하나의 액션에 추가

- ![image-20190711182340572](assets/image-20190711182340572.png)
- nextButtonTouched() 는 **다음** 버튼과 **Button** 버튼에 연결되어 있다.

### IBAction

> 컨트롤의 이벤트가 발생했을 때 실행될 행동

### IBOutlet과 IBAction의 연결 구조

![image-20190714183518269](assets/image-20190714183518269.png)

- UI에 오브젝트를 추가한다.

- 오브젝트의 행동을 구현하기 위해서 코드를 사용한다. (@IBAction)

  - ex. 버튼을 클릭하면 버튼은 타겟에게 액션 메세지를 전송한다.

- 컨트롤 이벤트가 발생하면 뷰가 감지해 컨트롤러에게 전달한다. 

- 컨트롤러는 뷰를 업데이트한다.

  - IBOutlet을 이용해 타겟의 속성등을 변경한다. (IBAction의 수행 내용)

  

### IBAction Control Event의 종류

| Control Event          | 설명                              |
| ---------------------- | --------------------------------- |
| touchDown              | 컨트롤을 터치했을 때              |
| touchDownRepeat        | 컨트롤을 연속 터치했을 때         |
| touchDragInside        | 컨트롤 범위 내에서 드래그 했을 때 |
| touchDragOutside					| 컨트롤 범위 바깥쪽에서 드래그 했을 때 |
| touchDragEnter					| 컨트롤의 범위 바깥쪽으로 나갔다가 다시 들어왔을 때 |
| touchDragExit					| 컨트롤의 범위 바깥쪽으로 나갔을때 |
| touchUpInside          | 컨트롤 영역 안쪽에서 터치 후 뗐을 때 |
| touchUpOutside         | 컨트롤 영역 안쪽에서 터치 후 컨트롤 바깥에서 뗐을 때 |
| touchCancel            | 컨트롤의 현재 터치를 취소하는 이벤트 |
| valueChanged           | 컨트롤을 드래깅이나 다른 방법으로 조작해서 값이 변경됐을 때 |
| primaryActionTriggered | 버튼이 눌릴때 |
| editingDidBegin        | UITextField에서 입력을 시작할 때 (텍스트 필드 눌렀을 때) |
| editingChanged         | UITextField에서 값이 바뀔 때 |
| editingDidEnd          | UITextField에서 입력이 끝났을 때 (텍스트 필드 바깥을 눌렀을 때) |
| editingDidEndOnExit    | UITextField의 편집상태에서 키보드의 return을 눌렀을 때 |
| allTouchEvents         | 모든 터치 이벤트 |
| allEditingEvents       | UITextField에서 모든 편집 이벤트 |
| applicationReserved    | 앱의 사용에 따라 지정할 수 있는 컨트롤 이벤트 값의 범위 |
| systemReserved         | 내부 프레임워크 내에서 사용되는 예약된 컨트롤 이벤트 값의 범위 |
| allEvents              | 시스템 이벤트를 포함한 모든 이벤트 |

<br/>

## STEP 11-4 Scene과 Segue

<br/>

### 실행결과

![step4result](assets/step4.gif)



<br>

### Segue

- 유저 인터페이스의 다양한 경로를 그래픽적으로 레이아웃하기 위해 segue를 사용한다. 

- 세그는 한 scene에서 다른 씬으로의 트랜지션을 정해준다.

- 유저 인터페이스의 터치나 3D 터치 제스처 등으로 트리거 된다.

-  각 세그 타입은 다른 트랜지션 결과를 가져온다.

  <br/>

### Segue Type

![image-20190716221424912](assets/image-20190716221424912.png)



| Symbol                                                       | Type               | Description                                                  |
| ------------------------------------------------------------ | ------------------ | ------------------------------------------------------------ |
| ![SB_segue_push](https://help.apple.com/xcode/mac/current/en.lproj/Art/SB_segue_push.png) | Show               | 초기 뷰 컨트롤러가 네비게이션 컨트롤러면  show를 통해 뷰를 뷰컨트롤러 스택에 푸시한다.<br />split view에서 화면의 컨텐츠에 따라 디테일 영역 또는 마스터 영역에 컨텐츠를 표시한다.<br/>앱이 마스터 및 디테일 뷰를 표시하는 경우 콘텐츠가 디테일 영역으로 푸시된다. 앱이 마스터와 디테일 중 하나만 표시하는 경우 콘텐츠는 현재 뷰컨트롤러 스택의 탑에 푸시된다. |
| ![SB_segue_push](https://help.apple.com/xcode/mac/current/en.lproj/Art/SB_segue_push.png) | Show Detail        | split view 컨트롤러에서 사용된다.<br />show와 비슷하지만 push 가 아니라 replace이다. <br/>디테일 영역에 컨텐츠를 표시한다. 마스터와 디테일 뷰를 표시하고 있을 때, 새로운 컨텐츠가 현재 디테일뷰를 대체한다.<br/>마스터와 디테일 중 하나만 표시하는 경우에는 컨텐츠가 현재 뷰 컨트롤러 스택의 탑을 대체한다.<br />split view가 아닌 곳에서는 modal segue처럼 동작한다. |
| ![SB_segue_modal](https://help.apple.com/xcode/mac/current/en.lproj/Art/SB_segue_modal.png) | Present Modally    | 컨텐츠를 모달 형태로 띄운다.<br />모달 뷰 컨트롤러는 계층 구조 또는 스택에 속하지 않고 이전 뷰 컨트롤러 위에 위치한다. |
| ![SB_segue_popover](https://help.apple.com/xcode/mac/current/en.lproj/Art/SB_segue_popover.png) | Present as Popover | 뷰 위에 앵커를 가진 팝업 형태로 컨텐츠 뷰를 띄운다.<br />이 세그 타입은 iPad에서 주로 사용된다. iPhone과 같이 화면이 작은 기기에서는 일반적인 모달 트랜지션으로 동작한다. |
| ![SB_segue_custom](https://help.apple.com/xcode/mac/current/en.lproj/Art/SB_segue_custom.png) | Custom             | 개발자가 지정한 세그 동작을 수행한다.                        |

<br/>

### Animations for modal segues

- Cover Vertical: default, 뷰가 아래에서 위로 올라온다.
- Flip Horizontal: 카드를 뒤집는 것처럼 뷰가 수평으로 뒤집힌다. 
- Cross Dissolve: 이전 뷰는 서서히 사라지고 다음 뷰는 서서히 나타난다.
- Partial Curl: 노트의 페이지를 넘기는 것처럼 뷰가 나타난다. 

<br/>

### Segue 연결 방법

1. 스토리보드에서 직접 연결

   - Ctrl + 클릭
     ![image-20190716215232261](assets/image-20190716215232261.png)

   <br/>

2. 스토리보드와 코드를 이용해 연결

   - `func performSegue(withIdentifier identifier: String, sender: Any?)`

   - 세그웨이 identifier 설정

   - ![image-20190716215617416](assets/image-20190716215617416.png)

     

   - ```swift
     @IBAction func nextView(_ sender: UIButton) {
       performSegue(withIdentifier: "next", sender: sender)
     }
     ```

   <br/>

3. 코드를 이용해 연결

   - ```swift
     @IBAction func nextButtonTapped(_ sender: UIButton) {
       let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
             present(vc, animated: true, completion: nil)
     }
     ```

<br/>

### prepare

segue 가 트리거되면 `prepare(for:)` 메소드가 뷰 컨트롤러에서 불리고 이 때, 대상 뷰 컨트롤러의 프로퍼티들을 설정할 수 있다. 

```swift
public class MyViewController2 {
   var somePropertyFromMyViewController2: String!
}

public class MyViewController3 {
   var someOtherPropertyFromMyViewController3 = [Int]()
}

public class MyViewController1 {
   prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if let vc1 = segue.destination as? MyViewController1 {
        vc1.somePropertyFromMyViewController1 = someValueFromTheOriginVC
     }
     else if let vc2 = segue.destination as? MyViewController2 {
        vc2.someOtherPropertyFromMyViewController2 = someOtherValue
     }
   }
}
```

<br/>

### About The Life Cycle Of View Controllers During Segues

![mini1495222654-1100x752](assets/mini1495222654-1100x752.png)

- `prepareForSegue` 는 destination 뷰 컨트롤러가 이니셜라이즈 되고 난 뒤, 그리고 viewDidLoad 메소드가 호출되기 전에 불린다.  

- destination 뷰 컨트롤러의 프로퍼티를 설정할 때 viewDidLoad 이후로만 사용이 가능하다.  

  - segue로 전달된 프로퍼티들은 viewDidLoad, viewWillAppear, viewDidAppear에서는 안전하게 사용할 수 있다. 

  <br/>

  

### Unwind Segue

![image-20190716214748777](assets/image-20190716214748777.png)

- 세번째 뷰 컨트롤러에서 바로 첫번째 뷰 컨트롤러로 돌아와야할 때 unwindSegue를 사용한다. 

<br/>

## STEP 11-5 ViewController 프로그래밍

### 실행결과

![step5](assets/step5.gif)

<br/>

### ViewController

- `~ViewController: UIViewController`

- `var view: UIView!` 를 상속받는다.

- `view`는 VC의 프로퍼티로 root view, content view라고도 불린다.

- 뷰 컨트롤러의 `view` 는 **lazy loading** 이여서 뷰가 보여져야할 때 뷰를 만든다.

  <br/>

### ViewController의 책임

- 뷰의 컨텐츠 업데이트(보통 데이터 변경에 대한 응답)
- 뷰와 유저 인터랙션에 대해 반응
- 뷰 사이즈 조절, 전체 인터페이스 레이아웃 관리
- 다른 오브젝트(다른 뷰 컨트롤러 포함)와 함께 앱을 구성한다.

<br/>

### ViewController Life Cycle

- **`loadView()`**

  - `view` 프로퍼티가 요청됐지만 nil 인 경우에 뷰컨트롤러가 이 메소드를 호출한다.
- **뷰를 로드하거나 만들어서 `view` 프로퍼티에 할당한다.**
  - 관련된 nib 파일이 있는 경우, 메서드는 nib 파일에서 view를 로드한다.
- 관련된 nib 파일이 없는 경우, 기본 `UIView` 객체를 생성한다.
  - 인터페이스 빌더를 사용해 뷰 컨트롤러를 초기화하면 이 메서드를 override하면 안된다. 뷰를 수동으로 만들때 override 해야 한다. 
- 뷰의 추가적인 초기화를 하려면 `viewDidLoad()` 메서드에서 하면 된다.
  
- **`viewDidLoad()`**

  - **뷰 컨트롤러가 뷰 계층구조를 메모리에 로드한 뒤 호출된다.** 

  - 뷰가 처음 초기화될 때 **한 번만 불린다.**

- **`viewWillAppear()`**

  - 뷰 컨트롤러의 **뷰가 뷰 계층구조에 추가 될 때**, 뷰를 보여주기 위해 애니메이션이 구성되기 전에 호출된다.
  - 뷰가 화면에 보일때마다 호출되기 때문에 다른 뷰에 갔다가 다시 돌아오는 경우에 해야하는 처리등을 할 수 있다.

- **`viewDidAppear()`**

  - **뷰가 화면에 나타난 직후**에 호출된다. 
  - 화면에 적용될 애니메이션을 그려준다.

- **`viewWillDisappear`**

  - 뷰가 **뷰 계층 구조에서 없어지기 직전**에 호출된다.

- **`viewDidDisappear`**

  - 뷰가 **화면에서 제거된 직후**에 호출된다.

<br/>

- `FirstView` , `BlueView`, `PurpleView` 의 뷰컨트롤러 라이프 사이클 콜백 메소드마다 `print(#file, #line, #function, #column)` 을 작성한 결과 (경로부분은 편의를 위해 편집함)

- 뷰 컨트롤러 콜백 메서드 흐름

  - <img src = "assets/image-20190722172846418.png" width = "500px" height = "200px">
  - <img src = "assets/image-20190722173052946.png" width = 370px, height = 750px>
  - `loadView`, `viewDidLoad` 는 한 번씩만 호출된다.
  - 다음 씬으로 넘어가는 전환이 있으면 다음 뷰컨트롤러는 `loadView` 를 호출한 뒤 `viewDidLoad` 를 호출한다.
  - 이전 뷰가 뷰 계층구조에서 없어지기 직전에 (이전 뷰의 `viewWillDisappear`가 호출됨) 다음뷰의  `viewWillAppear`가 호출된다. 
  - 다음 뷰가 뷰 계층구조에 추가되면 (`viewDidAppear`가 호출됨) 이전 뷰컨트롤러의 뷰가 뷰 계층구조에서 제거된다.(`viewDidDisappear`)
  - `viewWillDisappear` 가 호출되기 전에 다음 뷰의 `viewDidLoad` 가 호출된다. 
  - 다음 뷰가 나타나고 나서야 이전 뷰가 사라진다.

  <br/>

#### Calling sequence with UIModalPresentationSequence

<img src = "assets/image-20190723004921800.png" width = "400px" height = "250px">

- `BlueVC`에서 `nextButtonTouched(_:)`를 통해 PurpleVC 를 `present`한다.
- `PurpleVC` 에서 `closedButtonTouched(_:)`를 통해 뷰를 `dismiss` 한다. 
- `UIModalPresentationStyle` 에 따라 호출순서가 변경된다.
- [UIModalPresentationStyle 알아보기](https://magi82.github.io/ios-modal-presentation-style-01/)

<img src = "assets/image-20190723005400518.png" width = 100%>

- Style이 `fullScreen`, `currentContext` 인 경우

  - PurpleView가 메모리에 올라가고 난 뒤 BlueView가 사라진다는 것을 BlueVC에게 알려주고 PurpleView가 나타날 것을 PurpleVC에게 알려준다. 
  - fullScreen과 currentContext 스타일은 프레젠테이션이 끝난 뒤 presenting하는 VC(BlueVC)의 `view`가 뷰 계층구조에서 사라진다.

- Style이 `overFullScreen`, `overCurrentContext` 인 경우

  - BlueView가 사라짐을 암시하지도 사라지지도 않는다.

  - overFullScreen과 overCurrentContext는 프레젠테이션이 끝난 뒤에도 presenting VC의 `view`를 뷰 계층구조에서 제거하지 않는다. 

  - ####  

---

### Reference

http://monibu1548.github.io/2018/05/03/iboutlet-strong-weak/

https://cocoacasts.com/should-outlets-be-optionals-or-implicitly-unwrapped-optionals

https://developer.apple.com/documentation/uikit/uicontrol/event

https://help.apple.com/xcode/mac/current/#/devc06f7ee11https://help.apple.com/xcode/mac/current/#/dev7be043cad

https://digitalleaves.com/define-segues-programmatically/

https://developer.apple.com/documentation/uikit/uistoryboardsegue

https://medium.com/@kyeahen/ios-unwind-segue-in-swift-e8ff0e7fbbcd

https://oaksong.github.io/2018/02/12/view-controller-life-cycle/



