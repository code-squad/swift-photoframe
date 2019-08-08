# Photo-Frame

----

<a href ="#1-Step1---UITabBarController,-UITabBar">Step1 - UITabBarController, UITabBar</a>

<a href ="#2-Step2---UILabel">Step2 - UILabel</a>

<a href ="#3-Step3---IB">Step3 - IBOutlet, IBAction</a>

<a href ="#4-Step4---Segue">Step4 - Segue</a>

<a href ="#5-Step5---ViewController">Step5 - ViewController</a>

<a href ="#6-Step6---View-Controller-Container">Step6 - View Controller Container</a>

<a href ="#7-Step7---UIImage,UIImageView">Step7 - UIImage,UIImageView</a>

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







###  1. Step1 - UITabBarController, UITabBar

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

```swift
  // Destination 에 해당하는 viewcontroller 파일 내에 정의한다. 
  @IBAction func myUnwind(_ segue: UIStoryBoardSegue) {
    
  }
```

  

  - **unwind()** 의 **destination**이 될 viewcontroller를 정한다.
  
  - 그 곳에 **unwindSegue**를 받을 수 있는   **@IBAction** 메소드를 정의해둔다.
  
    

<img width="1044" alt="스크린샷 2019-07-23 오후 11 25 36" src="https://user-images.githubusercontent.com/39197978/61723415-1087f500-ada7-11e9-82fb-56063f6a1c2e.png">



#### 스토리 보드의 흐름도



- `shouldPerformSegue()` : 세그웨이 진행여부 판단

-  ```swift
  optional func shouldPerformSegue(withIdentifier identifier: NSStoryboardSegue.Identifier, 
                            sender: Any?) -> Bool
  ```

  - 세그웨이의 진행여부를 결정한다.
  - 내부에서 특정상태 일 때 세그웨이를 진행하지 않는 다면 이 부분에서 상태에 따른 반환을 하면된다.

  

- `prepareForSegue()` : 세그웨이 직전 제어

- ```swift
  // swift에서의 prepareForSegue
  func prepare(for segue: UIStoryboardSegue, 
        sender: Any?)
  ```

  - 세그웨이가 발생하기 직전에 수행된다.
  - `sender` 는 **Segue**를 발생시킨 **trigger오브젝트**이다.
    - 한 뷰 컨트롤러에서 다른 뷰컨트롤러의 세그웨이는 여러 개가 존재 할 수 있다
    - 그에 해당하는 **trigger** 에 따른 분기가 가능하다.
  - 이 메소드내에서 새로 보여질  뷰컨트롤러의 데이터를 제어할 수있다.
  - `segue.identifier`  프로퍼티를 이용해서 `segue` 종류에 따른 분기가 가능하다. 
    - 한 뷰 컨트롤러가 전환 될 뷰 컨트롤러가 다양하여 **Segue**가 여러개 존재 할 수 있다. 
  - `segue.destination / segue.source` 프로퍼티를 이용해서 `destination`  에 해당하는 뷰 컨트롤러에 데이터를 전달할 수 있다.

​	





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

    - > 여기서 뷰계층이란 - window 의 subView 의 계층입니다. 
    >
      > 뷰계층에 추가되야 화면에 디스플레이 될 수있고,
    >
      > window 의 `var rootViewController: UIViewController` 프로퍼티가 정해지면 
    >
      > `rootViewController`의 ` var view: UIView! ` 가 뷰계층에 추가된다.
    >
      > <img width="364" alt="스크린샷 2019-07-23 오후 11 31 32" src="https://user-images.githubusercontent.com/39197978/61720777-63ab7900-ada2-11e9-99f6-cf807184c0c0.png">
    >
      > 

      

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
    
    ---
    
    



### 6. Step6 - View Controller Container



Container View Controller은 여러 개의 viewcontroller들을 하나의 인터페이스로 결합하는 방법중 하나이다.

- UITabBarController
- UINavigationController
- UISplitViewController

UIKit은 위 3개의 Container View Controller를 내장하고 있다.



`Container view controller`는 자신의 `root view`와 `content`를 관리한다는 점에서 `content view controller`와 유사하다.

하지만 그 컨텐트가 **자신이 아닌 다른 뷰 컨트롤러**들의 일부를 가져온 다는 차이가 있다.

**가져온 `content`는 다른 뷰컨트롤러의 뷰들**이며 그 뷰들도 독자적인 뷰 계층을 가진다.

`container` 는 또 `content`의 사이즈와 위치를 제어한다. 

하지만 `content 내의 view`는 `container view controller`가 아닌 `content view controller`가 제어한다.



#### 컨테이너 뷰 컨트롤러를 설계하면서 고민해야하는 사항

- 컨테이너와 자식 각각의 역할을 무엇인가?
- 얼마나 많은 뷰 컨트롤러들이 동시에 디스플레이 되어야 하는가?
- 형제 뷰 컨트롤러 사이에 관계가 어떤가?
- 얼마나 많은 자식 뷰 컨트롤러들이 추가되고 삭제 될 것인가?
- 자식의 크기와 위치는 변하는가? 어떤 상황에서 변하는가?
- 컨테이너가 자체적으로 네비게이션이나 장식을 위한 뷰들을 제공하는가?
- 컨테이너와 자식간의 소통은 어떤 방식으로 이루어져야하는가?
- 컨테이너의 외형이 다른 방법으로 설정될 수있는가? 만약 있다면 어떻게 설정 하는가?



#### `UINavigationController` 

>계층적인 컨텐트를 stack형태로 다루는 Container view controller
>
>



<img width="772" alt="스크린샷 2019-07-28 오후 7 55 18" src="https://user-images.githubusercontent.com/39197978/62006687-f0797c80-b17e-11e9-985a-405dfaf575b4.png">

#### 특징

- `UINavigationController`는 계층적인 데이터의 집합을 디스플레이한다.

- 한번에 하나의 `view controller`를 표현한다.

- `navigation bar`는 화면 상단에 위치하며, 현재 표현하고 있는 데이터 계층과 이전 단계로 돌아가는 `Back`버튼을 포함한다.

- `child view`의 `table row` 또는 `button`으로 유저와 상호작용을 하고 `children view controller`는 `container`에게 `new view controller`을 푸시할 것을 요청한다

- 새로 화면에 보여질  `view controller`의 컨텐트는 `children view controller`가 설정하고, `container`가 전환을 담당한다.

- 네비게이션바와 컨텐트 영역이 존재하며, `children view controller`의 최상단의 뷰가 대부분의 컨텐트 영역을 차지한다.

- 상단에 네비게이션 바가 존재하고, 옵션으로 툴바를 가질 수 있다.

  





<img width="683" alt="스크린샷 2019-07-28 오후 10 09 19" src="https://user-images.githubusercontent.com/39197978/62007103-8237b880-b184-11e9-8049-97d6bef85f6d.png">

네비게이션 뷰컨트롤러는 컨테이너 뷰 컨트롤러이다.

view프로퍼티의  `var view: UIView!`는 NavigationBar, ToolBar( 옵션 ), 최상단에 해당하는 뷰컨트롤러의 뷰를 포함한다. 



#### `Navigation stack`



**UINavigationViewController**는 child View Controller 를 **정렬된 배열의 형태로 관리**한다.

배열의 첫번째 요소는 rootViewController 이고 배열의 마지막 요소는 스택의 최상단에 위치한다.

그리고 스택 최상단에 위치한 뷰컨트롤러가 화면에 보여진다.

스택에 뷰컨트롤러를 세그웨이를 이용해서 **추가(Push)**  하거나 **제거(Pop)** 할 수 있다. 

`UINavigationControllerDelegate` protocol을 채택함으로써, push, pop 동작을 재정의 할 수있다.

 



![navigation stack](https://user-images.githubusercontent.com/39197978/62006684-e8214180-b17e-11e9-8dfa-efd2643879c6.gif)



---



### 7. Step7 - UIImage,UIImageView

- 이미지 넘기기

![이미지넘기기](https://user-images.githubusercontent.com/39197978/62710171-c141f580-ba31-11e9-91c9-e39924e97f44.gif)

- 이미지 애니메이션 , 애니메이션 사이클 시간 제어

![애니메이션](https://user-images.githubusercontent.com/39197978/62710170-c141f580-ba31-11e9-9c1d-36e4d43e7fcd.gif)



- #### UIImage

  > 앱 내에서 이미지 데이터를 관리하는 객체

  

  ##### OverView

  - 이미지 객체는 **Immutable**

  - 하나의 이미지객체는 하나의 이미지 또는 여러개의 연속적인 이미지를 포함한다. 

    

  ##### 이미지 객체 생성하기 

  - **앱의 메인 번들내에 위치한 이미지 에셋과 이미지 파일로 부터 이미지를 만들기**

    ```swift
    init?(named name: String,  
       in bundle: Bundle?, 		 
    compatibleWith traitCollection: UITraitCollection?)
    // 이름이 있는 이미지 에셋을 사용하여 이미지 객체를 만드는 실패가능한 이니셜라이저
    ```

    - `name` -  이미지 에셋의 이름,	png만 확장자를 생략할 수 있다.

    - `bundle` - 이미지 파일 또는 에셋을 포함하고 있는 번들,  `nil` 이면 `main bundle`

    - `traitCollection` - 이미지와 연관된 환경의 특징, `nil` 이면 `main screen` 과 연관된 특징

      </br>

  - **초기에 앱의 번들에 존재하지 않고, disk로 부터 load 해서 이미지 만들기**

    ```swift
    init?(contentsOfFile path: String)
    // 파일의 경로로 이미지를 로드해오는 실패가능한 이니셜라이저
    // ❗️매번 디스크에서 이미지를 로드하기 때문에, 반복적으로 같은 이미지의 로드시 사용하지말자.
    ```

    - `path` - 파일의 경로

      </br>

  - **여러개의 연속된 이미지로 하나의 이미지 만들기**

  - ```swift
    class func animatedImageNamed(_ name: String, 
                         duration: TimeInterval) -> UIImage?
    ```

    - `name` - 이미지 파일 로의 부분적 혹은 전체 경로 , name에 0~1024를 덧붙이고 모든 이미지를 더한다.

       만약 `'image'` 가 `name` 파라미터에 들어오면 `image0`…`image1024` 에 해당하는 파일을 가져오고

       같은 스케일(배율)과 사이즈를 공유해야한다.

    - `duration` - 애니메이션의 기간

  

  ***Note***

  ```
  이미지 객체는 immutable 이기 때문에 생성이후에 그들의 프로퍼티를 변경할 수 없다.
  
  이미지객체가 왜 immutable일까?
  대부분의 이미지 프로퍼티는 이미지파일이나 이미지데이터에 따라 메타데이터가 설정된다.
  ```

  

  ##### What is Image asset? 

  > 이미지 에셋은 이미지들을 앱과 함께 관리하는 가장 쉬운 방법이다.
  >
  > 각각의 Xcode 프로젝트는 `asset library`를 포함하고 있으며, 이 곳에는 여러개의 `image set`을 더할 수 있다.
  >
  > 하나의 `image set` 은 하나의 이미지의 변화와 여러 플랫폼에서의 사용을 고려한 여러형태의 버전을 제공한다.

  

  ##### Stretchable 이미지 정의하기

  > **Stretchable image 란 ?**
  >
  > 표현할 데이터(이미지)가 미적으로 아름답게 복사될 구역을 정의하는 것이다.
  >
  > Stretchable image 는 일반적으로는 백그라운드의 공간에 컨텐츠를 늘리거나 줄여서 가득 채우기 위해 사용된다.
  >
  > </br>
  >
  > <img width="707" alt="스크린샷 2019-07-28 오후 11 28 51" src="https://user-images.githubusercontent.com/39197978/62159082-df319b00-b34b-11e9-851c-9d7edd56161c.png">
  >
  > 기존 이미지에 `inset`을 [`resizableImage(withCapInsets:)`](https://developer.apple.com/documentation/uikit/uiimage/1624102-resizableimage) 메소드로 추가해줌으로써 **Stretchable image** 를 정의한다.
  >
  > `inset`은 두개 또는 그 이상의 부분으로 이미지를 재분할 한다. 위의 그림은 9개로 분할 했다.
  >
  > `inset`은 신축되지 않을 이미지의 부분이다.
  >
  > `inset`을 제외한 부분이 늘어나고 줄어듬으로써, 이미지의 신축성을 관리할 수 있다.
  >
  > <img width="699" alt="스크린샷 2019-07-28 오후 11 28 57" src="https://user-images.githubusercontent.com/39197978/62159084-dfca3180-b34b-11e9-9ccb-4b5fdfe525ea.png">
  >
  > 

  

  ##### 이미지들간의 비교

  

  >캐시된 같은 이미지로 초기화한 두개의 이미지 객체는 서로 다를 것이다.
  >
  >isEqual 메소드를 사용하면 동등성의 기준을 재정의 할 수 있다.
  >
  >[isEqual(_:)](https://developer.apple.com/documentation/objectivec/nsobjectprotocol/1418795-isequal)
  >
  >- 서로 다른 이미지 데이터를 포함하는 지 확일할 수있는 유일한 메소드
  >-   [`NSData`](https://developer.apple.com/documentation/foundation/nsdata), [`NSDictionary`](https://developer.apple.com/documentation/foundation/nsdictionary), [`NSArray`](https://developer.apple.com/documentation/foundation/nsarray), [`NSString`](https://developer.apple.com/documentation/foundation/nsstring) 클래스에는 기본적으로 제공

  

  

  ##### 이미지 데이터에 접근하기

  >이미지 객체는 이미지 데이터 자체에 직접 접근하는 방법을 제공하지는 않는다.
  >
  >그러나 앱 사용 중에 다른 포맷의 이미지데이터를 가져올 수는 있다.
  >
  >`ciImage`,`cgImage`  프로퍼티를 이용해 Core Image / CoreGrapic 
  >
  >[`pngData()`](https://developer.apple.com/documentation/uikit/uiimage/1624096-pngdata) and [`jpegData(compressionQuality:)`](https://developer.apple.com/documentation/uikit/uiimage/1624115-jpegdata) 를 이용해서 









- ### UIImageView

------

> 단일 이미지 또는 연속되는 이미지를  인터페이스에 디스플레이 해주는 객체

https://developer.apple.com/documentation/uikit/uiimageview

<br/>

### OverView

- 특정한 `UIImage`  객체를 사용하는 어떠한 이미지를 능률적으로 그릴수 있게 해준다.

- example

- ```
  UIImageView 클래스를 다양한 표준 이미지파일들(PNG,JPEG)의 컨텐트를 그리기위해서 사용할 수있다.
  ```

- 코드 또는 인터페이스빌더로 이미지를 설정할 수 있고, 런타임에서 이미지를 변화시킬 수도 있다.

- animation을 start, stop 하는 메서드를 사용할 수 있다.

  <br/>

  ------

  <br/>

  <br/>

### UnderStanding How Images Are Scaled ◾️◼️⬛️

- `ImageView`는 `contentMode` 라는 프로퍼티를 사용하여, 어떻게 이미지가 디스플레이 되어 질 지를  스스로 결정합니다.
- 지정된 이미지의 크기와 `ImageView`의 크기가 정확하게 일치하는 것이 가장 좋지만, 그렇지 않다면 `imageView`는 이미지의 비율을 조절한다.
- `ImageView`의 크기가 변하기 된다면 **필요에 따라  이미지의 크기도 같이 변해야할 수 있다.**
- `Cap inset` 이 없는 이미지는` ImageView`의 `contentMode`  홀로 이미지의 표현을 결정한다.



##### What is ContentMode ?🧐

> 뷰의 사이즈가 변할 때, 그들의 컨텐트를 어떻게 적응시킬 지 지정하는 옵션
>
> - `scaleToFil`
>
> <img width="200" alt="scaleFill" src="https://user-images.githubusercontent.com/39197978/62196543-3588f300-b3b9-11e9-9166-6bf5c9b26576.png" align = left> <br><br><br><br><br>	필요에 따라 이미지의 
>
> ​	aspect ratio(종횡비)를 바꾸면서
>
> ​	컨텐트의 사이즈를 맞추는 옵션
>
> ​	**이미지의 가로세로 비율이 변경되어 보여질 수있다** 
>
> <br><br><br><br>
>
> 
>
> <br>
>
> - `scaleAspectFit`
>
> <img width="200" alt="aspectFit" src="https://user-images.githubusercontent.com/39197978/62196542-3588f300-b3b9-11e9-9e7f-6669bc2b13b6.png" align = left> <br><br><br><br><br><br><br>	aspect ratio를 유지하면서, 
>
> ​	컨텐트의 사이즈를 알맞게 사이즈를 맞추는 옵션
>
> ​	**남는 부분은 투명하게 처리한다**.
>
> <br>
>
> <br>
>
> <br><br>
>
> <br>
>
> - `scaleAspectFill`
>
> <img width="200" alt="aspectFill" src="https://user-images.githubusercontent.com/39197978/62196540-3588f300-b3b9-11e9-8bc7-0aa9300d1a1a.png" align = left>	<br><br><br><br><br><br>	Aspect ratio 를 유지하면서, 
>
> ​	컨텐트를 뷰에 가득 채운다.
>
> ​	**뷰를 가득 채우기 위해, 컨텐트의 일부가 잘릴 수 있다.**
>
> <br><br><br><br><br><br>
>
> <br>
>
> ------

<br><br>

### Determining the Final Transparency of the Image ⬜️⬛️

<br>

- 이미지는 **ImageView의 background 와 합성된 이후**, window의 나머지와 합성된다.
- 이미지의 투명도는 이미지뷰의 배경을 볼 수 있게 해준다. 
- 이미지의 배경의 투명도는 이것을 보여주는 **`UIImage`의 투명도와 `UIImageView`의 투명도**에 의존한다.
  - 이미지는 이미지뷰의 배경에 합성이 된다.
  - `UIImageView`의 프로퍼티`isOpaque` 가 `true`이면 이미지의 픽셀들은 이미지뷰의 배경색의 위에 합성되고, 이미지의 `alpha` 값은 무시된다.
  - `UIImage`의 `isOpaque` 가 `false` 이면, 각각의 픽셀의  `alpha` 값은 imageView의 alpha값과 곱해진다. 그 결과값은 실제 그 픽셀의 투명도에 반영된다. 만약 이미지가 알파채널(jpg 같은 이미지파일)을가지지 않는다면 이미지의 알파를 1.0으로 가정한다.

<br>

------

<br>

<br>

### Animating a Sequence of Images 🛬🛬🛬🛫🛫

<br>

**Image view**는 움직이는 연속되는 이미지를 저장할수 있다.  그리고 전체 또는 일부를 재생할 수있다.

**`UIImage`객체의 배열**로 연속되는 이미지를 명시하고, `animationImages` 프로퍼티에 그것들을 할당하면된다.

일단 한번 할당되면, `UIImageView`의 애니메이션 타이밍과 시작,취소를 설정하는 메소드와 프로퍼티들을 사용할 수 있다.  



#### 움직이는 이미지들을 디스플레이 할 때, 고려해야할 사항 Tip💭

- **모든 연속되는 이미지는 같은 크기를 가져야한다.** 비율의 조정이 필요할 때, 이미지뷰는 연속되는 이미지를 각각 분리적으로 비율을 조정한다. 만약 이미지들의 크기가 다를 경우, 원하는 결과와는 다른 결과를 산출할 수 있다. 
- **모든 연속되는 이미지는 같은 컨텐트 스케일(비율) 요소를 사용해야한다.** 각각의 이미지의 `scale` 프로퍼티가 같은 값을 포함하는 지 확실히 해두자.

<br>

------

<br>

<br>

### Responding to Touch Events 👈

<br>

이미지뷰는 기본적으로는 유저의 이벤트들을 무시한다.  일반적으로는, 이미지뷰는 단지 시각적인 컨텐트를 인터페이스에 표현하기 위해서 사용한다. 만약 그뿐아니라, **유저와의 상호작용을 핸들링 하기위해서 이미지뷰를 사용하기를 원한다면,**

`isUserInteractonEnabled` 프로퍼티값을 `true`로 하면 가능하다. 그 이후 **gesture recognizer** 를 붙이거나, 

다른 기술로 이벤트 핸들링을 이용할 수 있다.

<br>

------

<br>

<br>

### Tips for Improving Performance ⬆️

<br>

이미지 **scaling** 과 **alpha blending** 은 앱의 성능에 영향을 끼칠 수있는 비용이 비싼 연산이다.

이미지뷰 코드의 성능을 최대치로 끌어올리기 위해서 아래의 사항을 고려해보자.



- **빈번하게 사용되는 이미지의 스케일된 버전을 캐시하자.** 거대한 이미지를 작게 스케일된 썸네일 이미지를 빈번하게 보여주는 게 예상되는 경우, 작게 스케일된 이미지들을 미리 만들고 그 이미지들을 썸네일 캐시로 저장하는 것을 고려해 볼 수 있다. 각각의 이미지뷰에서 그것들을 스케일하는 요구를 줄일 수 있다.
- **가능한 한 이미지뷰를 불투명하게 하자.**  만약 의도적으로 이미지가 투명도를 포함할 경우가 아니라면, `isOpaque`프로퍼티를 `true`  로 해두자. 그러면 투명도 연산을 피할 수있다.

<br>

------

<br>

<br>

### Debuging Issues with Your Image View

<br>

만약 이미지 뷰가 예측한 대로 보여지지 않는다면, 아래의 팁으로 문제를 진단해보자.

- **올바른 메소드로 이미지를 불러오고 있는가?**  `UIImage` 의 `init(named:in:compatible:with:)` 이니셜라이저는 **asset catalog 또는 앱의 번들 에서 이미지들을 불러온다.** 만약 앱 번들의 외부에서 이미지를 불러오려면, `imageWithContentsOfFile:` 메소드를 사용하자.

- **사용자 정의 드로잉을 위해서 이미지뷰들을 사용하지 말자.** `UIImageView `클래스는 그들의 컨텐트를 `draw(:)` 메소드를 이용해서 그리지 않는다.  **오로지 이미지뷰는 이미지를 표현하기 위해 사용해라**.  이미지들과 연관된 드로잉을 하기위해서는, UIView를 직접 상속하고, 그 곳에 이미지를 그려라.

  <br>

------

<br><br>

### Interface Builder Attributes

<br>

|    Attribute    |                          Discussion                          |
| :-------------: | :----------------------------------------------------------: |
|    **Image**    | **디스플레이 하기위한 이미지속성.** Xcode 프로젝트 내의 특정이미지를 명시할 수 있다.   코드상에서 이 속성을 설정하려면, `image` 또는 `animationImages` 프로퍼티를 이용하자. |
| **Highlighted** | **Image view 가 강조되었을 때, 보여줄 이미지에 관한 속성.** 코드상에서 설정하기를 원한다면, `highlightedImage` 또는 `highlightedAnimationImages` 프로퍼티를 이용하자. |
|    **State**    | **이미지의 초기 상태를 나타내는 속성.** 이 속성을 이미지가 강조 또는 비강조를 표현하기위해서 사용하자. 코드상에서 `isHighlighted` 프로퍼티를 이용하자 |



<br>

------

<br>

<br>

### Internationalization

<br>

< 추가 업데이트 예정 >

<br>

------

<br>

<br>

### Accecssibility

<br>

이미지 뷰들은 기본적으로는 접근이 가능하다.  이미지뷰의 기본 접근성 속성은 이미지와 유저와의 상호작용 여부이다.

[Accessibility Programming Guide for iOS](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/iPhoneAccessibility/Introduction/Introduction.html#//apple_ref/doc/uid/TP40008785). 

<br>

<br>

------

<br>

### State Preservation



이미지 뷰의 `restorationIdentifier` 프로퍼티 값 을 할당할 때, **보여질 이미지의 프레임을 보존하기위한 노력을 해야한다.**  특히,  `bounds, center, transform` 과 같은 뷰의 프로퍼티의 값 과 `anchorPoint` 과 같은 레이어의 본질적인 프로퍼티 들을 보존해야한다. 



------





### Topic



#### Creating an Image View 

- **`init(image: UIImage?)`**  

  - 명시된 이미지로 초기화된 이미지뷰를 메소드

- **`init(image: UIImage? , highlightedImage: UIImage?)` ** 

  -  명시된 보통이미지와 강조된 이미지 들을 초기화된 이미지뷰를 반환하는 메소드 

    <br>

  ------

#### <br>Accessing the Displayed Images 

- **`image: UIImage?`** 

  - 이미지 뷰 내에 보여질 이미지 

- **`highlightedImage: UIImage?`**

  - 이미지 뷰 내에 보여질 강조된 이미지

  ------

<br>

#### Animating a Sequence of Images

- **`animationImages: [UIImage]?`**

  - 애니메이션에 사용할 `UIImage` 객체들의 배열

- **`highlightedAnimationImages: [UIImage]?`**

  - 뷰가 강조된 상태일 때, 애니메이션에서 사용할 `UIImage`의 배열

- **`animationDuration: TimeInterval`**

  - 이미지들의 한번의 순환에 걸리는 시간의 양

- **`animationRepeatCount: Int`**

  - 애니메이션을 반복하기하는 횟수를 명시하는 수

- **`startAnimating()`** 

  - 이미지의 애니메이션을 시작하는 메소드

- **`stopAnimating()`**

  - 이미지의 애니메이션을 중단하는 메소드

- **`isAnimating: Bool`**

  - 애니메이션이 동작하고 있는 지 아닌지를 가리키는 `Boolean` 속성

  ------

<br>

#### Configuring the Image View

- **`isUserInteractionEnableds: Bool`**

  - 유저의 이벤트를 이벤트 큐로 부터 제거하고 무시할 것인가를 결정하는 `Boolean` 값

- **`isHighlighted: Bool`**

  - 이미지가 강조되는 지 아닌지를 표현하는 `Boolean` 값

- **`tintColor: UIColor!`**

  - 뷰 계층안에서 이미지들을 색조를 더하는 데 사용되는 색상

  ------

#### Managing Focus-Related Behaviors

- **`adjustsImageWhenAncestorFocused: Bool`**

  - 상위 뷰가 포커싱 되었을때 이미지뷰가 응답할 수 있게 해주는 속성

- **`focusedFrameGuide: UILayoutGuide`**

  - 이미지뷰가 포커싱될 때 사용되는 레이아웃 가이드

- **`makeFocusEffectToContents: Bool`**

  - 강조된 이미지에서 alpha 값을 사용할 지 유무를 나타내는 `Boolean` 값

  ------

#### Layering Content on Top of the Image View

- **`overlayContentView: UIView`**
  - 이미지 뷰의 위의 층층이 이루어진 컨텐트를 관리하는 뷰