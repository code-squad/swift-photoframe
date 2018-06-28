# 포토 프레임 앱

## 스텝 1

1. print(#file, #line, #function, #column) 코드 결과 확인
- #file : 해당 코드가 실행된 파일의 상대위치값
- #line : 실행된 코드 라인 위치
- #function : 실행된 함수 이름
- #column : 실행됬을때 컬럼 번호(문자열의 경우 글자수)

2. View Controllers
- controller manages a single root view
- Every app has at least one view controller
- container view controller embeds the content of other view controllers
3. UITabBar
- Tab bars always appear across the bottom edge of the screen and display the contents of one or more UITabBarItem objects
- Use tab bars to convey and change your app’s mode
- You can configure tab bar items using Interface Builder or create and configure them programmatically in your code
- A tab bar displays all of its tabs onscreen at once, using the itemPositioning property to determine how to position items in the available space
- If you have more items than can fit in the available space, display only a subset of them and let the user select which tabs are displayed
- The contents of each item are stored in a UITabBarItem object
- For tab bars with an associated tab bar controller, the tab bar controller automatically manages selections and displays the appropriate view controller. The only time you have to manage selections yourself is when you create the tab bar without a tab bar controller
- 관련 클래스 : UIToolbar

4. UITabBarController
- A container view controller that manages a radio-style selection interface, where the selection determines which child view controller to display
- The tab bar interface displays tabs at the bottom of the window for selecting between the different modes and for displaying the views for that mode
- When the user selects a specific tab, the tab bar controller displays the root view of the corresponding view controller, replacing any previous views
- If you add six or more custom view controllers to a tab bar controller, the tab bar controller displays only the first four items plus the standard More item on the tab bar
- 관련 클래스 : selectedViewController, UITabBarItem, UITabBarItem, UITabBarControllerDelegate protocol
