# 사진액자 앱

1. <a href="#1-시작하기---tabbed-app-템플릿">시작하기 - Tabbed App 템플릿</a>
2. <a href="#2-IBOutlet">IBOutlet</a>
3. <a href="#3-IBAction">IBAction</a>





## 1. 시작하기 - Tabbed App 템플릿

#### 추가 내용

자동 생성된 두 개의 `ViewController` 클래스에 추가한 내용입니다.

```swift
class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
}
```

```swift
class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
}
```



#### 사용된 코드 내용

- `viewDidLoad()` : `UIViewController` 의 인스턴스 메소드로, 해당 컨트롤러의 뷰가 메모리에 로드된 이후 호출되는 메소드이다.

- 디버깅 식별자 : 실행 중 디버깅을 할 때 유용하게 사용할 수 있는 식별자
  - `#file` : 현재 코드가 실행 중인 파일 이름
  - `#line` : 현재 코드가 실행되고 있는 줄 위치
  - `#function` : 현재 코드를 실행하고 있는 함수의 이름
  - `#column` : 현재 코드가 실행되고 있는 줄에서의 칸 위치



#### 콘솔 실행 결과

```
/Users/yxxjy/DevNote/swift-photoframe/PhotoFrame/PhotoFrame/FirstViewController.swift 15 viewDidLoad() 40
/Users/yxxjy/DevNote/swift-photoframe/PhotoFrame/PhotoFrame/SecondViewController.swift 15 viewDidLoad() 40
```



#### UITabBarController와 UITabBar

- **`UITabBarController`** : 보여줄 자식 뷰 컨트롤러를 라디오스타일 셀렉션으로 관리하는 뷰 컨트롤러
- **`UITabBar`** : 탭 아이템을 보여주고 제어하는 뷰





## 2. IBOutlet

#### 추가 내용

1. `@IBOutlet` 을 사용하여 `FirstViewController` 내 두 개의 `UILabel` 을 코드와 연결해주었습니다.

```swift
@IBOutlet weak var photoLabel: UILabel!
@IBOutlet weak var photoDescription: UILabel!
```

- **`IBOutlet`** 속성은 위에 선언한 `photoLabel` 과 `photoDescription` 프로퍼티가 **Interface Builder** 와 연결된 것임을 Xcode가 알 수 있게 해줍니다.
-  **`weak`** 키워드를 사용하면 레퍼런스 카운트를 올리지않아, 참조순환이 발생하는 것을 방지해줍니다.



2. `UILabel` 클래스 프로퍼티를 활용해 텍스트 내용과 스타일을 변경했습니다.

- `var text: String?` : 텍스트 내용
- `var attriutedText: NSAttributedString?` 
  - `NSAttributedString` : 하이퍼링크나 데이터 접근, 스타일 등의 여러 관련 속성을 갖고있는 문자열입니다. `[NSAttributedString.Key : Any]?` 의 속성 딕셔너리로 초기화합니다.
- `var font: UIFont!` : 텍스트 폰트
- `var textColor: UIColor!` : 텍스트 컬러
- `var shadowColor: UIColor?` : 텍스트 그림자 컬러
- `var shadowOffset: CGSize` : 텍스트 그림자 두께



3. 세부적인 뷰 표현을 위해 `UILabel` 을 상속받는 Custom Class를 추가했습니다. 

```swift
@IBOutlet weak var photoLabel: TitleLabel!
@IBOutlet weak var photoDescription: SubTitleLabel!
```



#### 실행 화면

![스크린샷 2018-11-30 오후 1.40.59](./images/step2/스크린샷 2018-11-30 오후 1.40.59.png)





## 3. IBAction

#### 추가 내용

1. 버튼에 `@IBAction` 으로 아래에 기재한 터치 이벤트를 추가했습니다.

- **UIControl.Event**
  -  `touchUpInside` : **터치업**(터치 후 손가락을 떼는 행위) 이벤트가 컨트롤 경계 **내부**에서 일어났을 때.
  - `touchUpOutside` : **터치업** 이벤트가 컨트롤 경계 **외부**에서 일어났을 때.
  - `touchDown` : 터치다운. 단어 그대로 손가락이 **터치** 행위를 하고 있을 때.
  - `touchDownRepeat` : 터치다운 이벤트가 **반복**해서 일어났을 때. 이 때는 UITouch의 `tapCount` 가 1보다 크다.
  - `touchDragInside` : 컨트롤 경계 **내부**에서 **드래그**를 했을 때.
  - `touchDragOutside` : 컨트롤 경계 **외부**에서 **드래그**를 했을 때.
  - `touchDragEnter` : **드래그** 이벤트가 컨트롤 경계 외부에서 일어나다가 **내부로 진입**했을 때.
  - `touchDragExit` : **드래그** 이벤트가 컨트롤 경계 내부에서 일어나다가 **외부로 나갔**을 때.
  - `touchCancel` : 현재 터치 이벤트를 **중단**시키는 **시스템 이벤트**가 일어났을 때.



#### 실행 화면

추가한 터치 이벤트 액션이 실행되는 것을 확인하기 위해, 액션마다 아래의 메소드를 실행해주었습니다.

```swift
private func showResult(of result: String) {
	resultOfButtonAction.text = result
	print(result)
}
```

- 시뮬레이터

![스크린샷 2018-12-03 오후 1.55.17](./images/step3/스크린샷 2018-12-03 오후 1.55.17.png)

- 콘솔

![스크린샷 2018-12-03 오후 2.06.46](./images/step3/스크린샷 2018-12-03 오후 2.06.46.png)