# Photo-Frame

----

<a href ="#1-Step1---UITabBarController,-UITabBar">Step1 - UITabBarController, UITabBar</a>

<a href ="#2-Step2---UILabel">Step2 - UILabel</a>

<a href ="#3-Step3---IB">Step3 - IBOutlet, IBAction</a>

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

