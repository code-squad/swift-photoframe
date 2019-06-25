STEP 11-5

# UIViewController  학습내용 정리



## Why it use?

- use it as reusable unit
- make better quality app by simple way



## Role

- 컨트롤러라는 말마따나 MVC 패턴에서의 Controller 역할을 한다.
- View의 전체/특정 영역을 담당한다.
- 내부 프로퍼티로 model 객체를 포함하기도 함



## Custom View Controller?

- 모든 앱들은 적어도 하나의 UIViewController의 커스텀 서브클래스를 갖는다.
- UIViewController를 상속받는 서브클래스로 사용자 정의 뷰 컨트롤러를 만들 수 있다.
- Custom view controllers는 앱의 전반적인 동작과 유저 상호작용에 대응한 앱의 표면적인 변화를 규정한다.
- 가령, 11-4 스텝에서 사용자가 커스터마이징한 화면전환 방식등은 커스텀 뷰 컨트롤러를 만듦으로써 수행된다.
- View의 계층에 맞게 서로 관련있는 ViewController를 다뤄야 한다.
- ViewController의 API 메서드를 오버라이드해서 사용하기도하고, 앱 서비스 개발자의 비즈니스 로직을 추가하기도 한다.
- 무엇보다 ViewController로 인한 동작이 앱의 동작 흐름에 맞추는 것이 중요하다.

----



### View Management

[공식문서 원문](https://developer.apple.com/documentation/uikit/uiviewcontroller)

- 각각의 view controller는 view 계층구조를 관리하며, root view는 view controller 클래스의 view 속성에 저장된다.
- root view는 주로 나머지 뷰 계층구조들에 대한 컨테이너로 작동한다. 
- root view의 위치와 크기는 root view를 보유한 객체나 app의 window, 혹은 parent view controller에 의해 결정된다.
- window가 소유한 view controller는 앱의 root view controller이고, 해당 root view는 화면을 채울 수 있는 크기가 된다. 
- view controller는 view를 lazy loading한다. 처음으로 뷰 속성에 액세스하면 view controller의 view가 로드되거나 생성된다. view controller에 대한 view를 지정하는 방법에는 여러 가지가 있다.
- 스토리 보드에서 view controller를 로드하려면 적절한 UIStoryboard 객체의 **instantiateViewController (withIdentifier :) 메소드를 호출**해야 한다. 스토리 보드 객체는 view controller를 생성하여 코드에 반환합니다.
- Nib 파일을 사용하여 view controller에 대한 view를 지정한다. **nib 파일을 사용**하면 단일 뷰 컨트롤러의 뷰를 지정할 수 있지만 **뷰 컨트롤러 사이의 방향 또는 관계를 정의 할 수는 없다.** nib 파일은 **뷰 컨트롤러 자체에 대한 최소한의 정보 만 저장**합니다.
- nib 파일을 사용하여 view controller 개체를 초기화하려면 뷰 컨트롤러 클래스를 프로그래밍 방식으로 만들고 init (nibName : bundle :) 메서드를 사용하여 초기화하면된다. view가 요청을 보내면, nib 파일에서 view controller를 로드한다.
- 참고로 nib란 NeXTSTEP Interface Builder로 인터페이스 빌더를 통해 유저 인터페이스를 묘사하는 파일이다. 대부분의 최근 iOS 개발에 있어서는 storyboard로 대체되었다. 
- loadView () 메소드를 사용하여 뷰 컨트롤러의 뷰를 지정하자. 이 방법에서는 뷰 계층 구조를 프로그래밍 방식으로 만들고 해당 계층 구조의 루트 뷰를 뷰 컨트롤러의 view 속성에 할당한다.



-----



## ViewController Life cycle

View Controller는 다음과 같은 생명주기를 지닌다.

[이미지 출처 - zedd님의 ios 블로그](https://zeddios.tistory.com/43)

![zeddios](./images/step5/viewController_lifecycle_zeddios.jpeg)

아래에서 중복으로 설명하는 것들을 제외한 나머지에 대해 정리한다. (참고로 후술하지만 viewDidUnload는 deprecated 되었다.)

( 전반적으로 독학했던 React 라이브러리의 View lifecycle 구조와도 흡사하다. )





**init(nibName:bundle:)**

- 지정된 번들에 nib 파일이있는 새로 초기화 된 뷰 컨트롤러를 반환하는 메서드이다.

- 새로이 초기화된 viewController를 반환하는 함수이다.
- 스토리보드를 사용하여 뷰컨트롤러나 관련된 뷰들을 정의한다면, 직접적으로 생성자 함수를 호출하지는 않는다. 대신 스토리보드에 의해 뷰 컨트롤러(와 뷰들이)가 초기화 된다.

**loadView**() 

- 컨트롤러가 관리하는 뷰를 생성하는 메서드이다. 

**viewDidUnload**() - **deprecated after iOS 6 released**

- 메모리 성능이 나쁘던 시절에 메모리의 효율적인 관리를 위해 사용후 released된 view를 제거(언마운트)하는 목적으로 사용되었었다.





## UIViewController의 주요 Callback 함수

- 화면, 회전과 관련된 Callback 함수들로 ViewController의 LifeCycle과도 관련이 깊다.

### 1. 화면 관련

![그림](./images/step5/UIViewController_lifecycle.png)



- view**DidLoad**() 
  - viewController의 view가 메모리에 로드되고 난 후에 호출되는 메서드이다. 
  - 앞서 말한 init() 생성자 함수 호출 뒤 뷰(컨트롤러)가 로드되고나서 추가작업을 수행하는데 사용된다. 
  
  
  
- view**WillAppear**()
  - 스크린에 나타날 뷰를 준비시킨다. 
  - 뷰 컨트롤러에게 해당 뷰가 뷰 계층구조에 추가될 것을 알린다.
  - true 값이라면, view는 animation 을 통해 화면에 추가될 것이다.
  - **뷰 컨트롤러가 화면에 나타나기 직전**에 항상 실행된다. 
  - 뷰 컨트롤러가 나타나기 직전마다 일어나는 작업을 배치한다.
  
  
  
- view**DidAppear**()
  - **Notifies** the view controller that **its view was added **to a view hierarchy.
  - If `true`, the view was added to the window using an animation.
  - **뷰 컨트롤러가 화면에 나타난 직후에 실행**된다. 
  - 화면에 적용할 Animation 을 그리거나 API로부터 정보를 받아와서 화면을 update할 때의 로직을 배치하기에 적절하다.
  
  
  
- view**WillDisappear**()
  - Notifies the view controller that its view is about to be removed from a view hierarchy.
  - If `true`, the disappearance of the view is being animated.
  - **뷰 컨트롤러가 화면에 나타나기 직전**에 실행된다.
  
  
  
- view**DidDisappear**()
  - Notifies the view controller that **its view was removed from** a view hierarchy.
  - If `true`, the disappearance of the view was animated.
  - **뷰 컨트롤러가 화면에 나타난 직후에 실행**된다.
  
  
  
  
  
  ```
  ViewWillAppear - 뷰 컨트롤러가 화면에 나타나기 직전에 실행됩니다. 뷰 컨트롤러가 나타나기 직전에 항상 실행되기 때문에 해당 뷰 컨트롤러가 나타나기 직전마다 일어나는 작업들을 여기에 배치 시킬 수 있습니다.
  ViewDidAppear - 뷰 컨트롤러가 화면에 나타난 직후에 실행됩니다. 화면에 적용될 애니메이션을 그리거나 API로 부터 정보를 받아와 화면을 업데이트 할 때 이곳에 로직을 위치시키면 좋습니다. 왜냐하면 지나치게 빨리 애니메이션을 그리거나 API에서 정보를 받아와 뷰 컨트롤러를 업데이트 할 경우 화면에 반영되지 않습니다.
  ViewWill/DidDisappear - 뷰 컨트롤러가 화면에 나타난 직전/직후에 실행됩니다.
  ```

### 2. 회전 관련

- (Bool) **shouldAutorotate**

- (UIInterfaceOrientationMask) **supportedInterfaceOrientations**

- (UIInterfaceOrientation) **preferredInterfaceOrientationForPresentation**

  





