# step 1
<img width="969" alt="스크린샷 2021-02-10 오후 4 14 24" src="https://user-images.githubusercontent.com/68788135/107478066-37da2900-6bbc-11eb-87a6-584164829ab7.png">

UITabBar와 UITabBarController의 차이점은 무엇인가?

UITabBar는 UIView를 상속 받음.
UITabBarController는 UIViewController를 상속 받음.

UITabBarController는 containerViewController이며 하위 viewController를 가질 수 있음. 
UITabBarController의 Tabbar에 있는 tabBarItem을 클릭하면 알맞는 viewController의 root view를 present 해준다.

UITabBar는 보통 UITabBarController와 결합되어 쓰이지만, 단독으로 쓰일 수도 있다. UITabBar는 항상 화면의 하단에 위치하며 하나 이상의 UITabBarItem을 표시한다.
: https://velog.io/@hanseop95/UITabBarController%EC%99%80-UITabBar. 

# step 2

* var text: String?  
 -> label 이 보여줄 내용. 
* var attributedText: NSAttributedString?
 -> 해당 레이블의 스타일 텍스트
* var font: UIFont!
 -> 레이블이 보여줄 text의 폰트 설정, nil로 설정 시 default value로 reset한다 ( 공식문서 :  https://developer.apple.com/documentation/uikit/uilabel/1620532-font). 
 default value : system font at a size of 17 points.  
* var textColor: UIColor!
 -> text의 색상. UIColor(displayP3Red: cgFloat, green: cgFloat, blue: cgFloat, alpha: cgFloat) : rgba로 조정가능. alpha를 조정하여 투명도 조정. 0.0~1.0 까지의 범위를 지니며 해당 범위를 초과하면 가장 가까운 경계값으로 지정된다.
* var textAlignment: NSTextAlignment
 -> label의 alignment를 조절. UILabel객체의 위치를 조정하는게 아니라, 내부의 text의 위치를 조절함에 주의
* var lineBreakMode: NSLineBreakMode
 -> text가 길 경우 작동하는 lineBreakMode를 설정 할 수 있음.
* var isEnabled: Bool
 -> 활성화 유무
* var enablesMarqueeWhenAncestorFocused: Bool 
__ TVOS Only! __
 -> 텍스트가 우측에서 좌측으로 움직임.
 
이 외의 속성은 텍스트 크기, 텍스트 그림자, 이벤트 관련, 하이라이트 색상, 중첩 그리기 등이 있음

# step 3
반성 - 일정 조정의 실패로 많이 밀렸다. 시간을 들여 진도를 맞추기로 한다.

IB : Interface Builder
@는 컴파일러에게 어떤 속성을 가지고있다고 전하는 역할을 하는 예약어이다. 컴파일러에게 @가 붙은 명령어에 대해 어떤 attribute가 부여되었음을 말한다. 아래의 예시처럼 속성이 부여된다.

@IBAction // Interface Builder와 연결된 Action이다.
@UIApplicationMain // App의 Main이 여기에 있다.

하나의 객체에 여려개의 event를 추가 할 수 있음. -> touchup inside와 outside를 추가하여 확인함.
여러 객체의 event를 하나의 IBAction에 지정 가능한가? -> 가능, 추가 객체를 선언하여 확인.  
<img width="300" alt="스크린샷 2021-02-15 오후 1 03 39" src="https://user-images.githubusercontent.com/68788135/107907397-f3250800-6f96-11eb-920d-2614f87cd523.png">
<img width="300" alt="스크린샷 2021-02-15 오후 1 03 55" src="https://user-images.githubusercontent.com/68788135/107907405-f7512580-6f96-11eb-9f5c-a08ffa95bccd.png">
<img width="300" alt="스크린샷 2021-02-15 오후 1 03 47" src="https://user-images.githubusercontent.com/68788135/107907409-f91ae900-6f96-11eb-862d-6b76a07d4346.png">

# step 4
* Show(Push)    
이 segue는 target view controller의 showViewController:sender: 가 실행된다.
일반적으로는 source View Controller위에 새로운 컨텐트가 모달로 보여진다.
몇몇 뷰컨트롤러들은 해당 메소드가 재정의 되어있어서 다른동작을 한다.
UIKit은 targetViewControllerForAction:sender:메소드로 source View Controller 를 찾는다.  
* Show Detail (Replace)    
이 segue는 target view controller 의 showDetailViewController:sender:메소드가 실행된다.
이 segue는 UISplitViewController 객체 내에 내장된 view controller에 대해서만 관련된 segue이다.
split view controller는 자식 뷰컨트롤러를 새로운 컨텐츠로 replace합니다.
나머지 대부분의 view controller에서는 모달로 보여줌
* Present Modally    이 segue는 view controller를 모달로 보여준다.
* Present as Popover    기존 view 에 앵커를 둔 컨텐츠를 보여줍니다.

``` swift
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

``` swift
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

# step 5
view가 스택으로 쌓인 경우, 스와이프해서 제거 할 수 있는데, 이 때 dismiss와 같은 동작을 하는 것으로 보인다.
viewWillDisappear(_:) -> viewDidDisappear(_:)

<img width="813" alt="스크린샷 2021-02-15 오후 3 01 22" src="https://user-images.githubusercontent.com/68788135/107910933-ce349300-6f9e-11eb-89ce-07ae8a7d0390.png">

segue없이 새로운 view를 보여주기 위해서는 아래와 같은 코드를 활용한다
``` swift
let detailStoryboard = UIStoryboard.init(name: "Detail", bundle: nil)
        guard let detailVC = detailStoryboard.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else {return}
        detailVC.tempCurrentCoordinate = cooperate
        
        present(detailVC, animated: true, completion: nil)
```

# step 6
참고 : https://minominodomino.github.io/devlog/2019/05/19/ios-ContainerViewController/

기존 segue action : show에서는 새로운 view가 열리거나 닫힐 때 viewWillDisappear(_:) -> viewDidDisappear(_:) 방식으로 열리거나 닫히는 내용만 호출되었다.

하지만 navigationController.popViewController 를 통하면, 
viewWillDisappear(_:) -> viewWillAppear(_:) -> viewDidDisappear(_:)  -> viewDidAppear(_:) 순서로 동작한다.  
사유는 navigation stack으로 되어있기 때문으로 보이며, tree구조 처럼 상위에서 하위로 넓어져가기 때문인 것 같다. -> LIFO
stack의 최하위에는 Root View Contoller가 존재하며 이는 stack 에서 pop하지 않는다. 

dismiss로 해제되지 않는 이유 : func dismiss : Dismisses the view controller that was presented **modally** by the view controller.

navigation interface와 modal에서의 화면전환 차이는 화면 흐름과 관련되는지 유무이다.
-> navigation interface : 화면 흐름 있음, modal : 기존의 흐름을 끊고 새로운 입력을 받거나 알람표시.
navigation controller : 표시 : push, 제거 : pop
modal : 표시 : present, 제거 : dismiss

UINavigationController는 viewControllers, navigationBar, toolbar, delegate를 갖는다. 
: https://developer.apple.com/documentation/uikit/uinavigationcontroller

<img width="858" alt="스크린샷 2021-02-15 오후 4 22 05" src="https://user-images.githubusercontent.com/68788135/107918347-d4317080-6fac-11eb-8e63-c249d97529b9.png">

# step 7


