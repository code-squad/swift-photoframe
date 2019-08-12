# Photo-Frame

----

<a href ="#1-Step1---UITabBarController,-UITabBar">Step1 - UITabBarController, UITabBar</a>

<a href ="#2-Step2---UILabel">Step2 - UILabel</a>

---

### Intro

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

  