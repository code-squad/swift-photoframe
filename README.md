## PhotoFrame - step1

### 프로그래밍 요구사항

자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.

### 콘솔 화면
![consol](image/consol.png)

* 애플 UIKit View Management 클래스 중에서 UITabBarController 와 UITabBar에 대해 학습한다.
	* 각 클래스 역할은 무엇인가? 어떤 경우에 사용하나?
	* UITabBar와 UITabBarController의 차이점은 무엇인가?
	* 관련 클래스는 무엇이 있나?


* UITabBar  
일반적으로 화면의 아랫부분에 위치하며 여러 다른 내용의 뷰를 사용자들이 선택할 수 있도록 문자열과 부가적인 아이콘들을 표시한다.
탭 바는 수평적 화면 이동을 제공하는 인터페이스이다. 내비게이션 바가 수직적 화면 이동에 사용되는 것과 달리, 동등한 수준의
여러 화면으로 이동할 때 사용된다. 탭 바 내부에 나열된 각각의 탭들은 터치했을 때 그에 연결된 화면으로 이동함을 의미한다. 
탭바의 탭은 일반적으로 5개 미만으로만 사용하는 것이 적절한데, 그 이상 늘어나면 사용자가 터치할 충분한 공간 확보가
어렵기 때문이다. 만약 그 이상으로 늘어나야 한다면 탭 바 대신 다른 인터페이스를 사용하거나 또는 더보기 방식으로 나머지
메뉴를 숨김 처리하는 것이 좋다.
탭바는 탭 바 컨트롤러를 통해 다루는 것이 좋다.

* UITabBarController  
선택된 탭 항목에 따라 표시할 뷰를 결정하는 컨테이너 컨트롤러이다.




#### 참고링크  
[UITabBarController](https://developer.apple.com/documentation/uikit/uitabbarcontroller)   
[UITabBar](https://developer.apple.com/documentation/uikit/uitabbar)
