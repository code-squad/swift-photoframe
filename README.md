# 사진액자 앱


## UITabBarController
https://developer.apple.com/documentation/uikit/uitabbarcontroller#2934713
> A container view controller that manages a multiselection interface, where the selection determines which child view controller to display.

- 컨테이너뷰 컨트롤로의 한 종류로서 어떤 자식 뷰 컨트롤러를 보여줄 지 정하는 멀티섹션 인터페이스를 관리.
- UIViewController 를 상속받음
- 컨트롤러 자체에 TabBarItem을 품고 있는 TabBar라는 뷰를 가지고 있다
- 각 View에 Layer가 있어서 구분되며, TabBar View를 통해 Tab을 선택한다면 위에서 여러 겹쳐져 있는 화면 중에 오직 가장 최상단에 올라와 있는 Custom View 부분만 변경되면서 현재 어떤 Tab이 선택되었는지를 나타낸다

## UITabBar
https://developer.apple.com/documentation/uikit/uitabbar
> A control that displays one or more buttons in a tab bar for selecting between different subtasks, views, or modes in an app.

- TabBar에 있는 하나 혹은 이상의 버튼을 표시
- UIView 를 상속받음
- TabBar View 에 해당
- 사용자에게 탭들을 어떻게 보여주고 탭 클릭 시 어떻게 반응할 건지 (피드백을 어떻게 보여줄지)


### 참조
https://chocozero.github.io/IT/iOS/2018-02-09/iOS-UITabBarController%EC%99%80-UITabBar/

https://calmone.tistory.com/entry/iOS-UIKit-in-Swift-4-UITabBarController-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0-Display-tab-with-UITabBarController