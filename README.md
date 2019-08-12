# Photo-Frame

----

<a href ="#1-Step1---UITabBarController,-UITabBar">Step1 - UITabBarController, UITabBar</a>

<a href ="#2-Step2---UILabel">Step2 - UILabel</a>

<a href ="#3-Step3---IB">Step3 - IBOutlet, IBAction</a>

<a href ="#4-Step4---Segue">Step4 - Segue</a>

<a href ="#5-Step5---ViewController">Step5 - ViewController</a>

---

# Intro

- **Literal expression**

|   Literal    |        Type        |                            Value                             | Description                                                  |
| :----------: | :----------------: | :----------------------------------------------------------: | ------------------------------------------------------------ |
|   `#file`    |      `String`      |          The name of the file in which it appears.           |                                                              |
|   `#line`    |       `Int`        |             The line number on which it appears.             |                                                              |
|  `#column`   |       `Int`        |            The column number in which it begins.             |                                                              |
| `#function`  |      `String`      |       The name of the declaration in which it appears.       | 함수의 이름을 나타낸다. `getter`or`setter` 에서는 해당 프로퍼티의 이름 |
| `#dsohandle` | `UnsafeRawPointer` | The DSO (dynamic shared object) handle in use where it appears. |                                                              |

```swift
func log(nameOfFunc: String = #funtion ) {
  print("function:\(nameOfFunc)")
}

func call() {
  log()
}

// print : function: call
```

**기본값이나 함수의 인수로 사용될 경우, Call한 함수로 계산이 된다.**



```swift
let x  = 5
var y = 5
```



<img width="144" alt="스크린샷 2019-07-12 오전 3 23 33" src="https://user-images.githubusercontent.com/39197978/61075236-7cd43180-a454-11e9-96ad-5d85f691b644.png">

`x`라는 변수에 `5`라는 **리터럴 값을 대입하는 코드**이다.

리터럴을 번역하면 **'문자그대로'** 라는 뜻이다.. 

즉 리터럴은 **변하지 않는 데이터 그 자체**이다.



상수와 리터럴를 헷갈리곤 한다.

상수는 저 박스안의 값이 바뀔 수 없다. 즉 박스가 딱딱하게 되어있어서 안에 새로운 값을 넣을 수 없는 것이다.

**리터럴**은 저 5라는 **데이터 자체**이다.

```swift
y = 7
```

을 실행한다 해도 `5`라는 데이터 자체는 변하지 않는다. 단지 변수`y`에 담고 있는 리터럴이 다른 리터럴이 된 것이다.

---







###  Step1 - UITabBarController, UITabBar

- #### UITabBar

  - 일반적으로 하단 모서리에 위치한다.
  - `radio - style` 을 가졌다. - 하나가 선택되고 다중선택을 불가능하다.
  - `UITabBarItem`을 하나 이상 가진다.
  - `backGround` 이미지를 설정할 수 있다.
  - `tintColor` 를 설정할 수있다
  - `TabBar`를 직접 생성하게 되면  `TabBar` 내의 `TabItem` 을 직접 추가 삭제 변경, 선택에 대한 응답을 제어하기 위해서는 `delegate`  가 필요합니다.

- **UIToolBar** 

  - `ToolBar` 는 작업 집합들을 관리한다.**현재 뷰와 관련된 작업을 보여준다.**

    

  <img width="404" alt="스크린샷 2019-07-10 오후 8 15 27" src="https://user-images.githubusercontent.com/39197978/61035385-09093900-a402-11e9-90f9-6c830f4b1ac1.png">

- **UITabBar**

  - `TabBar`는 앱의 모드를 관리하고, **앱 전체와 관련이 있다.**

  <img width="411" alt="스크린샷 2019-07-10 오후 8 15 04" src="https://user-images.githubusercontent.com/39197978/61035383-0870a280-a402-11e9-89e5-1eef73cf7e08.png">

| Attributes        | Description                                                  | Associated Property                  |
| ----------------- | ------------------------------------------------------------ | ------------------------------------ |
| **Background**    | `Bar`의 배경이미지를 표현한다. `TintColor`  옵션보다 우선순위가 높다. | **`backgroundImage`**                |
| **Shadow**        | `BackGround` 이미지가 존재해야 유효한 속성이다.              | **`shadowImage`**                    |
| **Selection**     | 선택된 `Tab`의 이미지이다.                                   | **`selectionIndicatorImage`**        |
| **Image Tint**    | 선택된 `TabItem`에 적용되는 색상이다.                        | **`backgroundImage`**                |
| **Style**         | 선택된  `Bar`에  스타일을 표현하는 속성이다. **Light/Dark**  , **투명도**를 표현한다 | **`isTranslucent`**  ,**`barStyle`** |
| **Bar Tint**      | 선택된 `Bar`에 적용되는 색상이다.                            | **`tintColor`**                      |
| **Item Position** | `TabBar`  에서 `TabItem` 의 위치를 표현하기위한 속성이다.    | **`itemPositioning`**                |

**주요프로퍼티**

| Property            | Description                          |
| ------------------- | ------------------------------------ |
| **`items`**         | `TabBar`에 표시되는 `[UITabBarItem]` |
| **`selectedItem`**  | 현재 선택된 `UITabBarItem`           |
| **`isTranslucent`** | 반투명을 나타내는 `Bool`             |



**주요 메소드**

| Method                                         | Description                                           |
| ---------------------------------------------- | ----------------------------------------------------- |
| **setItems( _  :animated:)**                   | `TabBar`  의 항목을 설정할 수 있게 해준다.            |
| **beginCustomizingItems( _ : [UITabBarItem])** | 사용자가 `TabBar`  의 항목을 커스텀할 수 있게 해준다. |



- #### UITabBarViewController

  - 화면에 보여줄 하위`ViewController` 를 결정하는 셀력션을 가진 인터페이스가 있고 , `radio-style` 을 띄고 있다.

  - Each
    tab of a tab bar controller interface is associated with a custom view
    controller

  - 각각의 `tab`  은 `CustomViewController` 와 관련되어 있고, `tab` 이 선택되면 해당 `ViewController` 의 `rootViewController` 를 화면에 그린다.

  - 각각의 `tab`  에 관련된 인터페이스는 다른 `tab` 의 인터페이스와는 유사할 필요가 없다.

  - `TabBarViewController` 의 `TabBar` 에 직접 접근하지는 않아야한다.

  -  만약 설정하고 싶다면, `rootView`  의 `viewControllers` 프로퍼티 에 할당해서 사용해야한다.

  - `UITabItem`  이 6개가 넘어가게 되면 처음 4개와 기타🎸항목을 표시한다. - 최대 5개항목이 표시가능하다❪❔❫

  - `TabBarViewController` 객체는 소통에대한 알림을 `delegate`에게 보낸다

    

  <img width="867" alt="스크린샷 2019-07-11 오후 7 56 37" src="https://user-images.githubusercontent.com/39197978/61045604-247e3f00-a416-11e9-8788-d0663e0e990e.png">

  ​												

  - **주요 프로퍼티**

| Property                     | Description                                                  |
| ---------------------------- | ------------------------------------------------------------ |
| **`selectedViewController`** | 현재 선택된 `Tab` 과 관련된 `viewController`                 |
| **`selectedIndex`**          | 선택메뉴의 `Index`                                           |
| **`restorationIdentifier`**  | 뷰가 다시 복원되었을 때, 선택된 탭의 `ViewController`를 보존하기 위한 프로퍼티 🤔 |
| **`viewControllers`**        | 각각의 `Tab`에 해당하는 `[rootViewController]` , `tab` 의 순서와 배열의 순서는 무관하다. |
| **`tabBar`**                 | 내장된 `UITabBar`                                            |

---





### 2. Step2 - UILabel

-  **UILabel**

  - 읽기만 가능한 문자를 보여주는 뷰

     



<img width="307" alt="스크린샷 2019-07-14 오전 12 58 10" src="https://user-images.githubusercontent.com/39197978/61173772-e2e6c300-a5d2-11e9-9fec-59fbbd256550.png">

**인터페이스 빌더 주요 속성**

| Attribute    | Description                                                | Associated Attribute               |
| ------------ | ---------------------------------------------------------- | ---------------------------------- |
| **Text**     | `UILabel` 의 컨텐츠에 해당하는 속성                        | **`text`**,**`attrubutedText`**    |
| **Color**    | **Text**의 색상을 제어하는 속성                            |                                    |
| **Font**     | **Text**의 글꼴을 제어하는 속성                            |                                    |
| **Lines**    | 렌더링될 **Text**의 최대 줄 수를 결정하는 속성             | **`numberOfLines`**                |
| **Behavior** | Enable (활성화/비활성화) / Highlight 의 동작과 관련된 속성 | **`isEnable`**,**`isHighlighted`** |

**인터페이스 빌더 간격에 관한 속성**

| Attribute      | Description                                                  | Associated Attribute                                         |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Baseline**   | 수직 정렬을 제어하는 속성                                    | **`baselineadjustment`**                                     |
| **LineBreaks** | 문자들이 `bound`보다 길어졌을 때, 글자 단위 또는 문자 단위로 줄바꿈을 할 것인 지 결정하는 속성        최대 줄이 보다 넘어가게 되면 … 으로 생략되게 되는 데 앞,뒤,중간 중 어느 부분을 생략할 것인 지 결정할 수 있다. | **`lineBreakMode`**                                          |
| **AutoShrink** | **Text** 가 생략되기 전에 모양 조정을 제어하는 속성 간격을 줄이거나, 글자의 크기를 줄일 수 있다. | **`miimumScaleFactor`**, **`allowDefaultTighteningForTruncation`** |



**인터페이스 빌더 고급 속성**

| Attribute         | Description                                  | Associated Attribute       |
| ----------------- | -------------------------------------------- | -------------------------- |
| **Highlighted**   | 하이라이트된 **Text**의 색상에 적용되는 속성 | **`highlightedTextColor`** |
| **Shadow**        | 그림자의 색상에 적용되는 속성                | **`shadowColor`**          |
| **Shadow Offset** | 그람자의 오프셋을 제어하는 속성              | **`shadowOffset`**         |



* **text , attributedText**

  | text                                             | attributedText                                               |
  | ------------------------------------------------ | ------------------------------------------------------------ |
  | 문자열에 속하는 모든 문자들에게 동일한 속성 부여 | 문자열에 해당하는 문자들에게 `Range` 별로 각각의 속성을 부여할 수 있다. |

  

---

### 3. Step3 - IB

- **Outlet**

  - **Outlet**은 하나의 오브젝트에서 **다른 오브젝트의 참조를 가지는 프로퍼티**이다.
  - reference는 인터페이스빌더를 통해 기록된다.
  - **Outlet**들과 포함하는 오브젝트간의 연결은 **nib 파일로 부터 unarchived**(기록저장 용도로 쓰다가 실제로 사용될 때(?)) 될 때마다 **재정립**된다 
  - 포함하고 있는 오브젝트는 **Outlet**을 ` IBOutlet`이라는 타입한정자와 함께  약한참조의 형태(`weak`)로 가지고 있다.
  - **Outlet**은 오브젝트의 캡슐화된 데이터의 일부기때문에 **프로퍼티의 형태**로 있어야한다.
  - **오브젝트**와 **Outlet**의 연결은 `nib파일`에 기록된다.
  - **nib파일이 로드될 때**, **unarchived** 되고, 이 관계는 재정립된다.
  - `@IBOutlet`이라는 태그가 정의부에 적용된다. 왜냐하면 인터페이스 빌더가 이 프로퍼티를 **Outlet**으로서 인식을 하기 위해서이다.
  - **controller오브젝트**와 **인터페이스오브젝트간의 연결**이 일반적이다.  하지만 인터페이스빌더의 인스턴스로서 보여질 수있는 오브젝트라면 연결이 어떤 오브젝트라도 가능하다.
  - 오브젝트가 가지는 Outlet이 많으면 많을 수 록 메모리를 많이 필요로 한다. 인덱스로 참조하거나, 함수의 인자로 받는 형태로 대체 가능하다.
  - **Outlet 은 결국 오브젝트간의 하나의 합성의 형태이다. 하나의 객체에서 다른 객체에게 메시지를 보내기위해서 참조를 얻어오기 위해 요구되는 동적패턴이다.**

- **Action**

  - 액션은 하나의 **컨트롤이 타겟에게 보내는 메시지** 이다.

  - **시스템에게 의도를 전달**하기 위해서 `Control`을 사용한다.

  - `Control`을 통해서 하드웨어에서 발생한 이벤트 자체는 의도를 내포하기 어렵다, 그래서 이벤트와 명령간의 변환에는 일종의 메커니즘이 필요하다.`target-action`이라고 불리는

  - Appkit 에서는 액션을 **SEL**타입의 인스턴스 변수로 저장한다.

  - **action메소드**는 `sender(액션메시지를 보내는 컨트롤)`라는 Id타입의 단일 파라미터를 받으며, 반환은 따로 하지 않는다.

  - UIkit에서의 이벤트는 사람의 손가락에서 시작되고, 이것은 멀티 터치또한 처리해야한다. 

  - Target 과 action을 하나 이상의 제어 이벤트와 연결하여 대상 개체에 작업 메시지를 보내도록 컨트롤을 설정합니다

  - 특정 지정된 방식으로 컨트롤을 터치하게되면, **컨트롤은 액션메시지 `(sendAction:to:from:forEvent:)`를 UIApplication**에게 보낸다. 

  - 만약 액션메시지의 타겟이 nil이라면 액션메시지를 처리할 때 까지 체이닝을 통해 응답을 할 수 있는 객체를 찾는다.

    - UIKit에서의 메시지형태

    - ```
      •	- (void)action
      •	- (void)action:(id)sender
      •	- (void)action:(id)sender forEvent:(UIEvent *)event
      ```

- **Target**

- ```
  타겟은 액션메시지의 리시버이다.
  Control은 액션메시지에 타겟을 Outlet의 형태로 가지고있다.
  만약 action 의 타겟이 nil 이라도 아래의 절차에 따라 응답할 객체를 찾는다.
  1. 메시지처리를 위한 검색은 keyWindow를 첫번째로 window의 contentView로 연쇄된다.
  2. window와 window의 delegate를 시도한다.
  3. mainWIndow와 keyWindow가 다르다면 mainWindow로 다시 검색을 시작합니다.
  4. 오브젝트가 한번 시도를 하고 응답하지 못한다면, delegate에게 요청한다.
  ```

- **Control**

- ```
  Control
  컨트롤은 사용자의 의도를 시스템에 반영한다.
  컨트롤은 사용자의 명령을 수행할 오브젝트에게 전달한다
  
  사용자가 컨트롤에서 어떤 작업을 했을 때, 하드웨어에는 이벤트를 발생시킨다.
  이벤트는 타겟에게 액션메시지로 전달되고, 명령이 실행된다.
  
  UIKit에서의 컨트롤들은 UIControl(iOS의 target-action 메커니즘의 대부분이 정의된 )의 자식클래스이다.
  
  
  ```

-  **Step3 - 실행영상**

![ezgif com-resize](https://user-images.githubusercontent.com/39197978/61221321-3ed85580-a753-11e9-86e3-40ae587fe961.gif)

하나의 버튼에는 여러개의 이벤트를 전달할 액션 메소드를 연결할 수 있고,

그 액션메소드는 여러개의 컨트롤(UIControl 을 구현한 인스턴스) 들이 이벤트를 전달할 수있다.

##### 등록방법

<img width="262" alt="스크린샷 2019-07-15 오후 10 48 30" src="https://user-images.githubusercontent.com/39197978/61221114-bc4f9600-a752-11e9-9624-caa3769c4e59.png">

**하나의 버튼은 이벤트를 전달할 여러 개의 액션메소드를 지정할 수있다.**


<img width="1680" alt="스크린샷 2019-07-15 오후 10 44 19" src="https://user-images.githubusercontent.com/39197978/61220846-29166080-a752-11e9-9571-141f581c9d2f.png">

**위의 스크린샷과 같이 하나의 버튼의 이벤트를 보낼 액션메소드를 이미 구현되어있는 액션메소드로 지정할 수있다.**



**UIControl.Event**

| Control Event              | 설명                                                         |
| -------------------------- | ------------------------------------------------------------ |
| **touchDown**              | 컨트롤을 누를 때 발생하는 이벤트                             |
| **touchDownRepeat**        | 컨트롤을 연속해서 누를 때  발생하는 이벤트                   |
| **touchDragInside**        | 컨트롤 내부에서 드래그가 이루어질 때 발생하는 이벤트         |
| **touchDragOutside**       | 컨트롤 외부에서 드래그가 이루어 질 때 발생하는 이벤트        |
| **touchDragEnter**         | 컨트롤이 외부에서 드래그를하며 내부로 드래그를 할 때 발생하는 이벤트 |
| **touchDragExit**          | 컨트롤의 외부로 드래그를 할 때 발생하는 이벤트               |
| **touchUpInside**          | 컨트롤 영역 안쪽에서 터치하고 손을 뗏을 때 발생하는 이벤트   |
| **touchUpOutside**         | 컨트롤 영역 안쪽에서 터치 후 컨트롤 외부에서 손을 뗏을 때 발생하는 이벤트 |
| **touchCancel**            | 컨트롤의 현재 터치를 취소햇을 때 발생하는 시스템이벤트       |
| **valueChanged**           | 컨트롤을 드래깅이나 다른 방법으로 조작해서 값이 변경됐을 때 발생하는 이벤트 |
| **primaryActionTriggered** | 버튼이 눌릴때                                                |
| **editingDidBegin**        | UITextField에서 수정이 시작될 때 발생하는 이벤트 ( 텍스트 필드를 터치했을 때) |
| **editingChanged**         | UITextField에서 텍스트가 변경되었을 때 발생하는 이벤트       |
| **editingDidEnd**          | UITextField에서 수정이 끝났을 때 발생하는 이벤트 (텍스트 필드에서 포커싱이 사라질 때) |
| **editingDidEndOnExit**    | UITextField의 편집중에 키보드의 return을 눌렀을 때 발생하는 이벤트 |
| **allTouchEvents**         | 모든 터치 이벤트                                             |
| **allEditingEvents**       | UITextField에서 모든 편집 이벤트                             |
| **applicationReserved**    | 앱의 사용에 따라 지정할 수 있는 컨트롤 이벤트 값의 범위      |
| **systemReserved**         | 내부 프레임워크 내에서 사용되는 예약된 컨트롤 이벤트 값의 범위 |
| **allEvents**              | 시스템 이벤트를 포함한 모든 이벤트                           |

---

## 4. Step4 - Segue

### Segue

>하나의 Scene 으로부터 다른 Scene으로의 전환을 보여주는 연결입니다.

- **Segue Type**

| Symbol                                                       | Type                            | Description                                                  |
| :----------------------------------------------------------- | :------------------------------ | :----------------------------------------------------------- |
| ![img](https://help.apple.com/xcode/mac/current/en.lproj/Art/SB_segue_push.png) | Show  <br/>**(Push)**           | 이 segue는 **target view controller**의 **`showViewController:sender:`** 가 실행된다.<br/> 일반적으로는 **source View Controller**위에 새로운 컨텐트가 모달로 보여진다.<br/> 몇몇 뷰컨트롤러들은 해당 메소드가 재정의 되어있어서 다른동작을 한다.<br/>UIKit은 **`targetViewControllerForAction:sender:`**메소드로 **source View Controller** 를 찾는다. <br/><br/>예) **NavigationViewController** 는 새로운 뷰컨트롤러를 네비게이션 스택에 push 한다. |
| ![img](https://help.apple.com/xcode/mac/current/en.lproj/Art/SB_segue_push.png) | Show Detail  <br/>**(Replace)** | 이 segue는 **target view controller** 의 **`showDetailViewController:sender:`**메소드가 실행된다.<br/> 이 segue는 **UISplitViewController** 객체 내에 내장된 view controller에  대해서만 관련된 **segue**이다. <br/> split view controller는  자식 뷰컨트롤러를 새로운 컨텐츠로 replace합니다.<br/>나머지 대부분의 view controller에서는 모달로 보여줍니다. |
| ![img](https://help.apple.com/xcode/mac/current/en.lproj/Art/SB_segue_modal.png) | Present Modally                 | 이 segue는 view controller를 **모달**로 보여준다.<br/>       |
| ![img](https://help.apple.com/xcode/mac/current/en.lproj/Art/SB_segue_popover.png) | Present as Popover              | 기존 view 에 앵커를 둔 컨텐츠를 보여줍니다.                  |
| ![img](https://help.apple.com/xcode/mac/current/en.lproj/Art/SB_segue_custom.png) | Custom                          | 개발자가 지정한 행동을 하는 segue입니다.                     |



- **UIModalTransitionStyle(animation - 전환 효과 )**

- ```swift
  enum UIModalTransitionStyle: Int {
    	case coverVertical 
    // viewcontroller가 전환될 때 view가 미끄러지듯이 올라오고, dissmiss시 내려가는 기본 transtion스타일
  		case flipHorizontal
    // 오른쪽에서 왼쪽으로 수평회전을 한다. 🔄 새로 떠오르는 뷰가 이전 뷰의 뒷면에 있던 것처럼 보인다. 뒤집히는 모양의 transition
  		case crossDissolve
    // 이전 뷰가 흐릿해지고 전환될 뷰가 뚜렷해지는 효과가 동시에 일어난다.
  		case partialCurl
    // 한 쪽 코너에서 전환될 뷰가 말아 올라오는 형태로 드러난다. UIModalPresentationStyle.fullScreen 에서만 지원되고 , 다른 형태에서 사용시 exception이 발생한다
  }
  ```

- **UIModalPresentStyle**

- ```swift
  enum UIModalPresentStyle: Int {
    case automatic
  	// 시스템이 보여주는 방식을 정한다.
  	case fullScreen
  	// 스크린을 덮는 보여주는 방식
  	case pageSheet
    // 기본 뷰를 일부분을 덮는 보여주는 방식
  	case formSheet
    // 스크린의 중앙에 컨텐츠를 보여주는 방식
  	case currentContext
    // 다른 뷰컨트롤러를 통해 내용을 보여주는 방식
  A presentation style where the content is displayed over another view controller’s content.
  	case custom
    // 사용자 정의 animator 객체로 부터 관리되는 보여주는 방식
  	case overFullScreen
    // 스크린을 덮는 뷰를 보여주는 방식
  	case overCurrentContext
    // 다른 뷰 컨트롤러의 컨텐츠를 통해 보여주는 방식
  	case blurOverFullScreen
    // 새로 표현하는 뷰를 보여주기 전에 기존의 뷰를 흐릿하게 하며 보여주는 방식
  	case popover
    // popover뷰로 보여주는 방식
  	case none
  
  }
  ```

  

- #### Show (Push)

  ![showPush](https://user-images.githubusercontent.com/39197978/61460661-23b35300-a9aa-11e9-970a-ffb67cd0a10d.gif)

  - **UINavigationViewController**의 경우 **Navigation Stack**에 viewcontroller가 **push**된다.

  - 위의 **NavigationBar**의 **Item**을 보면 `< Back` 을 누르면 현재 viewcontroller가 **pop**된다.

    

- #### Present Modally

  ![presentModally](https://user-images.githubusercontent.com/39197978/61460660-23b35300-a9aa-11e9-82e0-8cefad226927.gif)

  - viewcontroller를 modal로 보여주는 방식이다,
  - 이전 view를 가리는 새로운 view가 보여지는 방식이다.



- #### CustomSegue

  ![customSegue2](https://user-images.githubusercontent.com/39197978/61465239-a7713d80-a9b2-11e9-9259-bdda110579d1.gif)

  - 사용자 정의 **segue** 이다.
  - 개발자가 정의한 대로 동작하고 **`UIStoryboardSegue`**를 상속하며 , **`perform()`**을 재정의하여 동작하게 할 수 있다.

  

- #### Prepare

  ![Prepare](https://user-images.githubusercontent.com/39197978/61465255-acce8800-a9b2-11e9-97dd-ee9320b6f7bf.gif)

  - **Segue** 가 발생하여 다른 viewcontroller로 전환되기 직전에 발생하는 **`prepare()`**가 호출된다.
  - **source viewcontroller**에서 **destination viewcontroller** 로 *data*를 넘기기위해 사용할 수 있다. 

- #### Unwind

  ---

- **액션메소드 정의하기**<br/>
![스크린샷 2019-07-18 오후 3.52.47](/Users/ldcpaul/Downloads/스크린샷/스크린샷 2019-07-18 오후 3.52.47.png)

  - **unwind()** 의 **destination**이 될 viewcontroller를 정한다.
  - 그 곳에 **unwindSegue**를 받을 수 있는   **@IBAction** 메소드를 정의해둔다.





- **Exit 연결하기**

  <img width="251" alt="스크린샷 2019-07-18 오후 4 27 41" src="https://user-images.githubusercontent.com/39197978/61466831-8f4eed80-a9b5-11e9-9820-c735fbbe0cd4.png">

  - **segue**의 트리거를 드래그해서 **exit**에 놓는다. 
  - **IBAction**으로 정의된 메소드 목록이 노출되고 거기에 연결된다.
  
  ---
  
  

### 5. Step5 - ViewController



- **Responsibility**

  - 주요한 데이터의 변화에 응답으로 뷰들의 컨텐트들을 업데이트 한다. 

  - 뷰들과 함께 사용자와의 대화에 응답한다. - 이벤트 핸들링

  - 뷰들의 사이즈 재조정과 전반적인 인터페이스의 레이아웃을 관리한다.

  - 다른 객체(뷰컨트롤러 등)들과 함께 앱을 구성한다.

    

- **ViewController Type**

  - **Content view controller **

    - 앱의 컨텐트의 일부분을 관리하는 뷰 컨트롤러 
    - 자신의 모든 뷰들을 스스로 관리한다.

  - **Container view controller**

    - 다른 뷰 컨트롤러들로 부터 정보를 모은다.

    - 자신의 뷰들과 자신의 자식 뷰컨트롤러들의 root view들을 관리한다.

    - 직접 자식 뷰컨트롤러릐 컨텐츠를 관리하지는 않고 root view의 크기조절과 위치조절에 대해서만 관리한다. 

      

- **Life Cycle Method**

  - **`viewDidLoad()`**

    - 뷰컨트롤러의 `var view: UIView! `프로퍼티는 지연로딩된다. view가 필요로 될 때 view가 nil이면 `loadView()` 메소드를 호출하여 view를 로드한다.
    - **`loadView()`직 후**에 호출되는 콜백메소드이다.

  - **`viewWillAppear()`**

    - 뷰컨트롤러의  root view 가 로드된 이후에 **window 의 뷰 계층으로 더해지기 직 전** 호출되는 메소드이다.

  - **`viewDidAppear()`**

    - window 의 root view가 **뷰 계층으로 더해진 직 후** 호출되는 메소드이다.

  - **`viewWillDisAppear()`**

    - window 의 root view가 **뷰 계층에서 제거되기 직 전** 호출되는 메소드이다.

  - **`viewDidDisAppear()`**

    - window 의 root view가 **뷰 계층에서 제거된 직 후** 호출되는 메소드이다.

      

    ![UIViewController_Class_Reference_2x_ddcaa00c-87d8-4c85-961e-ccfb9fa4aac2](https://user-images.githubusercontent.com/39197978/61628981-aac03e00-acbe-11e9-9f8a-51ce0654d005.png)

**Tip**

- **뷰 컨트롤러**는 **데이터 객체와 뷰 사이의 중개자**이다.

- 뷰 컨트롤러와 모델(데이터 오브젝트)의 책임을 깔끔하게 분리하는 걸 유지 해야한다.

- **뷰 컨트롤러는** **Responder객체**이고 Responder Chain 에 연결된다. 따라서 view controller 도 **이벤트 헨들링**을 할 수있다. 

  

- **View Life Cycle**

  **Present - CurrentContext / FullScreen 은 presentingViewController 의 rootView를 뷰계층에서 제거한다**

  **Present -  OverCurrentContext / OverFullScreen 은 presentingViewController 의 rootView를 뷰계층에서 제거하지 않는다**

  

  - #### Present  - CurrentContext, fullScreen

    - ![Context](https://user-images.githubusercontent.com/39197978/61656913-b894b400-acfc-11e9-9bc2-e37338d4f466.gif)

    - **Present : beforeViewController -> afterViewController**

    - ```
      - afterViewController.viewDidload()
      - beforeViewController.viewWillDisAppear()
      - afterViewController.viewWillAppear()
      - afterViewController.viewDidAppear()
      - beforeViewController.viewDisappear()
      ```

    - **Dissmiss : afterViewController -> beforeViewController**

    - ```
      - afterViewController.viewWillDisappear()
      - beforeViewController.viewWillAppear()
      - beforeViewController.viewWillAppear()
      - afterViewController.viewDisDisappear()
      ```

      **뷰 계층에서 사라질 뷰**  `WillDisappear()`

      **뷰 계층에 추가될 뷰**	`WillAppear()`

      **뷰 계층에 추가된 뷰**	`DidAppear()`

      **뷰 계층에서 사라질 뷰 **	`DidDisappear() `

      의 순서를 거치며 view가 전환된다.

      

      **CurrentContext / FullScreen 은 기존 presentingViewController 의 rootView가 뷰의 계층(window의 subView)에서 제거 된다.** 

      따라서 최상단에 뜰 뷰 이전의 뷰가 disAppear()되는 생명주기 메소드가 호출된다.

  ---

  - #### Present  - OverCurrentContext, OverFullScreen

    

    ![OverContext](https://user-images.githubusercontent.com/39197978/61656916-b92d4a80-acfc-11e9-8d79-fa93f91127ff.gif)

    

    - **Present : beforeViewController -> afterViewController**

    - ```
      - afterViewController.viewDidload()
      - afterViewController.viewWillAppear()
      - afterViewController.viewDidAppear()
      ```

    - **Dissmiss : afterViewController -> beforeViewController**

    - ```
      - afterViewController.viewWillDisappear()
      - afterViewController.viewDisDisappear()
      ```

      **뷰 계층에 추가될 뷰**	`WillAppear()`

      **뷰 계층에 추가될 뷰**	`DidAppear()`

      **뷰 계층에서 사라질 뷰 **	`DidDisappear() `

      의 순서를 거치며 view가 전환된다.

      

      **OverCurrentContext / OverFullScreen 은 기존 presentingViewController 의 rootView가 뷰의 계층(window의 subView)에서 제거되지 않는다.** 

      **Present** 시 `disappear` 되지 않으며,  **dismiss**시 다시 `appear `도 다시 호출되지 않는다 

  

  

  - #### Show (Push)

    - **NavigationViewController 에서의 Life Cycle 호출 순서**

  

  ![NaviLifeCycle](https://user-images.githubusercontent.com/39197978/61656914-b92d4a80-acfc-11e9-9042-adab6452c663.gif)

  

  - **Push : beforeView -> afterView**

  - ```
    - afterViewController.viewDidload()
    - beforeViewController.viewWillDisappear()
    - afterViewController.viewWillAppear()
    - beforeViewController.viewDidDisappear()
    - afterViewController.viewDidAppear()
    ```

  - **Pop : afterView -> beforeView**

  - ```
    - afterView.ControllerviewWillDisappear()
    - beforeViewController.viewWillAppear()
    - afterViewController.viewDisDisappear()
    - beforeViewController.viewDidAppear()
    ```

    

    네비게이션뷰컨트롤러는 두 개의 뷰 컨트롤러가 라이프 사이클 메소드를 주고 받듯 순서를 거치며 view가 전환된다.