# 사진액자 앱

1. [시작하기 - Tabbed App 템플릿][]



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