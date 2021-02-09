# 📷PhotoFrame

## Step01 - Tapped App

- 프로젝트 이름을 PhotoFrame으로 지정한다.

- TapBar Controller를 추가하고 기존 View Controller는 삭제한다.

<img src = "img/step01-01.png" width = "80%">

<img src = "img/step01-02.png" width = "80%">

<img src = "img/step01-03.png" width = "80%">

- viewDidLoad() 함수에서 `print("#file, #line, #function, #column")` 코드를 추가하면 콘솔 영역에 무엇이 출력되는지 확인한다.

<img src = "img/step01-04.png" width = "80%">

  

 ### ViewController Class

 ViewController를 사용하여 인터페이스를 관리하고 앱 콘텐츠 탐색을 용이하게합니다.
 >Manage your interface using view controllers and facilitate navigation around our app's content.
 **Responsibility (뷰컨트롤러의 책임)**

 - 주요한 데이터의 변화에 응답으로 뷰들의 컨텐트들을 업데이트 한다.
 - 뷰들과 함께 사용자와의 대화에 응답한다. - 이벤트 핸들링
 - 뷰들의 사이즈 재조정과 전반적인 인터페이스의 레이아웃을 관리한다.
 - 다른 객체(뷰컨트롤러 등)들과 함께 앱을 구성한다.

 	[참고](https://o-o-wl.tistory.com/43)
 
 Content View Controller와 Container View Controller로 구분된다.


 ### UITabBar vs UITabBarController
 - `UITabBar`는 `UIView`를 상속받는다
 - `UITabBarController`는 `UIViewController`를 상속받는다.

**관련 클래스**

- UITabBarItem

