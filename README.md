## #step1. Tabbed 앱

02/09 16:40

* TabBar Controller를 추가하고 Initial ViewController로 지정한다.

![스크린샷 2021-02-09 오후 4.37.24](/Users/kimjisun/Desktop/스크린샷 2021-02-09 오후 4.37.24.png)



* 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 `print(#file, #line, #function, #column)` 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.

![스크린샷 2021-02-09 오후 4.37.02](/Users/kimjisun/Desktop/스크린샷 2021-02-09 오후 4.37.02.png)



* UITabBarController 와 UITabBar

  1. UITabBarController 

     * UIViewController를 상속
     * Controller에 가까운 개념으로, 사용자가 특정한 탭을 선택했을때 어떤 탭이 보여져야하는가를 담당하는 객체
     * UITabBar의 상위 모듈로 볼 수 있다.

  2.  UITabBar

     * UIView를 상속
     * view에 가까운 개념으로 사용자에게 어떻게 탭을 보여줘야하는가를 담당하는 객체

  3. 공통점

     사용자가 뷰 컨트롤러들 간에 전환할 수 있는 방법을 제공함

     특정 탭을 누르면, 그 탭에 연결된 뷰 컨트롤러의 뷰가 나타난다.