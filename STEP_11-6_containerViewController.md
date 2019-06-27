**STEP 11-6**



# 2. Container View Controller

아래의 내용은 개념 학습과정에서 [document](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html) 의 일부를 번역/정리한 글입니다.



### Overview

- 컨테이너 뷰 컨트롤러는 여러 뷰 컨트롤러들로부터의 콘텐츠를 하나의 사용자 인터페이스로 결합시키는 방법을 제공한다.
- 컨테이너 뷰 컨트롤러들은 **네비게이션을 쉽게 쓰기 위해** 사용하거나, 현존 **콘텐츠를 기반으로 새로운 사용자 인터페이스 타입을 만들기 위해** 사용한다.
- UIKit 내의 컨테이너는 `UINavigationController`, `UITabBarController`, `UISplitViewController` 등이 있다. 이들은 모두 **앱의 UI 부분간의 navigation을 위해 사용**한다. 

대부분의 경우에 있어서, root view와 콘텐츠들을 다루는 컨테이너 뷰 컨트롤러는 다른 콘텐츠 뷰 컨트롤러와 유사합니다. 

- 결정적인 차이는 **컨테이너 뷰 컨트롤러(컨테이너)는 자신의 콘텐츠를 다른 뷰 컨트롤러들로부터 얻어온다는 점**입니다. 따라서 다른 뷰 컨트롤러의 view들로부터 얻어오는 컨텐츠들은 제한적일 수 밖에 없고, 자신의 뷰 계층구조를 내포하고 있습니다. 컨테이너는 **내포된 뷰들의 크기와 위치를 설정할 수** 있지만, 그것들의 **원래의 뷰 컨트롤러가 여전히 해당 뷰들의 컨텐츠들을 관리**합니다.

- 컨테이너를 설계함에 있어서 항상 컨테이너와 컨테이너에 포함된 뷰 컨트롤러 사이의 관계에 대해 신경을 써야 합니다. 뷰 컨트롤러와의 관계는 그 VC의 컨텐츠가 스크린에 나타나는 방법과 컨테이너가 내부적으로 그들을 다루는 방법에 대해 알려줍니다. 설계 프로세스 중에 아래의 질문들에 대해 항상 되묻는 것을 추천합니다.

> container의 역할은 무엇인가? 자식 VC들이 동작할 때 무슨 역할을 하는가?
>
> 얼마나 많은 자식VC를 동시에 표시할 것인가?
>
> sibling VC간에는 어떠한 관계를 설정할 수 있을까? 
>
> 컨테이너로부터 child view controllers를 추가하거나 삭제할 수 있는가?
>
> children의 size나 position을 변경할 수 있는가? 어떠한 조건하에서 그러한 변화들이 발생하는가?
>
> 컨테이너가 decorative 혹은 navigation과 관련된 자기자신의 view를 제공하는가?
>
> 컨테이너와 children VC간에 어떠한 종류의 소통이 이뤄져야 하나? 
>
> UIViewController 클래스에 의해 정의된 표준 방식 외에 컨테이너가 자식들에게 특정 이벤트들을 report할 필요가 있는가?



### 도식화

공식문서의 도식화된 그림을 통해 일반적인 **(content)ViewController**와 이들을 모아서 다루는 **Container View Controller**의 차이를 보면 다음과 같다.



### Content View Controller

![그림](./images/step6/contentViewController.png)



------



### Container View Controller

![그림](./images/step6/containerViewController.png)



----



### 관련 API

- 구체적인 Container View Controller에 따라 메서드가 다르나, 여기서는 일반적인 ViewController가 지니는, Container View Controller 성격의 메서드에 대해 정리합니다.

  - [`addChild(_:)`](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621394-addchild)	

    ​	1) **부모에서** `addChild(_: )` 호출

    ​	2) 자식 컨트롤러 rootVC를 **부모 컨트롤러의 컨테이너에 추가**

    ​	3) 자식 view에 대해 layout, size, constraint 변경

    ​	4) **자식 컨트롤러에서** `didMove(toParent:)` 호출

    cf [`insertChild(_: at:)`](https://developer.apple.com/documentation/appkit/nsviewcontroller/1434437-insertchild)

    - 특정 위치에 자식 뷰 컨트롤러를 추가하고자 할 때 사용

    - ```swift
      func insertChild(_ childViewController: NSViewController, 
                    at index: Int)
      ```

  - [`removeFromParent()`](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621425-removefromparent)

    ​	1) **자식 컨트롤러에서** `willMove(toParent:)` 호출

    ​	2) 자식 view에 대한 constraint 제거

    ​	3) 자식 컨트롤러 rootVC를 **부모 컨테이너에서 제거**

    ​	4) **자식 컨트롤러에서** `removeFromParent()` 호출

    cf. [`removeChild(at:)`](https://developer.apple.com/documentation/appkit/nsviewcontroller/1434404-removechild)

    - Removes a specified child controller from the view controller.

    ```swift
    func removeChild(at index: Int)
    ```

    

  - [`willMove(toParent:)`](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621381-willmove)

  - [`didMove(toParent:)`](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621405-didmove)

  

- 컨테이너 뷰 컨트롤러를 만들때 아래의 메서드/프로퍼티의 오버라이드가 요구되지는 않습니다.

- 기본적으로 rotation이나 appearance 콜들의 방향은 자식 뷰 컨트롤러로 향해있습니다.

```swift
/// 1) 컨트롤러 추가 : Adds the specified view controller as a child of the current view controller.
func addChild(_ childController: UIViewController)
/// 2) 컨트롤러 제거 : Removes the view controller from its parent.
func removeFromParent()

/// 3) 하위 컨트롤러에 접근
/// An array of view controllers that are children of the current view controller.
var children: [UIViewController] { get }

/// 4) Callback - Called just before the view controller is added or removed from a container view controller.
func willMove(toParent parent: UIViewController?)
/// 5) Callback - Called after the view controller is added or removed from a container view controller.
func didMove(toParent parent: UIViewController?)
```



### 참고 : 자식 컨트롤러 사이의 전환 예시

```swift
self.addChild(note)		/// sibling인 note를 recipe의 자식으로 추가
self.transition(from: recipe,	
								to: note,
								duration: 3,	
								options: .transitionFlipFromRight,
								animations: nil) {
  		(finished) in note.didMove(toParentViewController: self)	/// 화면전환 완료시 콜백
	}
```

```swift
func transition(from fromViewController: NSViewController, 
            	  to toViewController: NSViewController, 
       				  options: NSViewController.TransitionOptions = [], 
								completionHandler completion: (() -> Void)? = nil)
```





### 참고 : System View Controllers 

