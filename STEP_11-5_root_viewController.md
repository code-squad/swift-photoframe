STEP 11-5

# root ViewController  학습내용 정리



> 앱을 처음으로 구동하였을 때, 처음으로 시작하는 뷰 컨트롤러를 의미하는 것은 **아니다.**
>
> ​	그건 특정 view controller를 nitial view controller로 체크해두는 설정에 지나지 않는다.

```swift
var rootViewController: UIViewController? { get set }
```

>**The root view controller for the window.**

- 루트 뷰 컨트롤러는 화면의 컨텐츠 뷰를 제공하는 역할을 한다. 하나의 뷰 컨트롤러에 이러한 프로퍼티를 할당하면(프로그래밍이나 인터페이스 빌더를 통해서) 뷰 컨트롤러의 뷰에 window의 컨텐츠 뷰가 설치된다.
- 새 컨텐츠 뷰는 window 크기가 변경되면 변경하여 window의 크기를 추적하도록 조정된다.
- 만약 window에 기존 뷰 계층구조가 있는 상태면, 새 뷰가 설치되기 전에 기존 뷰들은 제거된다.
- 뷰 컨트롤러에서 이 속성의 디폴트 값은 `nil` 이다.



## How it Works?

- UIWindow에 `화면 가득` 자리잡은 rootViewController를 통해 컨텐츠 뷰를 제공할 viewController들의 화면이 정의되고, viewController들을 통해 View가 생성, 최종적으로 UIWindow에 display된다. 

세부적으로 

- `UIWindow`는 모바일에 실제 나타낼 window(창)을 의미한다.
- UIWindow에 정의된 `rootViewController`에 의해 화면에 나타날 뷰들의 크기가 정해진다.
- `rootViewController`를 기반으로 **각각의 `viewController`가 view를 생성**한다. View는 각각의 `z-axis` 순서(`UIWindow.Level`) 에 맞게 중첩되어 최종적으로 UIWindow에 나타나는 구조이다.

## 더 알아볼 개념..

- UIWindow.Level — struct ; 화면(window)간의 상대적인 위치를 나타낸다. (z-axis 기반)

- UIScreen - struct : 하드웨어 기반의 표시와 관련된 프로퍼티들의 객체