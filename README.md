# 포토 프레임 앱

## 스텝 1

1. print(#file, #line, #function, #column) 코드 결과 확인
- #file : 해당 코드가 실행된 파일의 상대위치값
- #line : 실행된 코드 라인 위치
- #function : 실행된 함수 이름
- #column : 실행됬을때 컬럼 번호(문자열의 경우 글자수)

2. View Controllers
- controller manages a single root view.
- Every app has at least one view controller.
- container view controller embeds the content of other view controllers.
3. UITabBar
- Tab bars always appear across the bottom edge of the screen and display the contents of one or more UITabBarItem objects.
- Use tab bars to convey and change your app’s mode.
- You can configure tab bar items using Interface Builder or create and configure them programmatically in your code.
- A tab bar displays all of its tabs onscreen at once, using the itemPositioning property to determine how to position items in the available space.
- If you have more items than can fit in the available space, display only a subset of them and let the user select which tabs are displayed.
- The contents of each item are stored in a UITabBarItem object.
- For tab bars with an associated tab bar controller, the tab bar controller automatically manages selections and displays the appropriate view controller. The only time you have to manage selections yourself is when you create the tab bar without a tab bar controller.
- 관련 클래스 : UIToolbar

4. UITabBarController
- A container view controller that manages a radio-style selection interface, where the selection determines which child view controller to display.
- The tab bar interface displays tabs at the bottom of the window for selecting between the different modes and for displaying the views for that mode.
- When the user selects a specific tab, the tab bar controller displays the root view of the corresponding view controller, replacing any previous views.
- If you add six or more custom view controllers to a tab bar controller, the tab bar controller displays only the first four items plus the standard More item on the tab bar.
- 관련 클래스 : selectedViewController, UITabBarItem, UITabBarItem, UITabBarControllerDelegate protocol

## 스텝 2

1. storyBoard 의 UILabel 을 IBOutlet 으로 viewController 에 photoLabel 변수로 연결
2. @IBOutlet weak var photoLabel: UILabel! 로 코드 자동 생성
3. self.photoLabel.인자 로 해당 UILabel 속성값 조절 가능

## 스텝 3

1. 버튼을 IBAction 으로 연결하면 터치 시 해당 펑션이 작동한다.
2. IBOutlet, IBAction 등으로 ViewController 에 연결하면 ViewController 내부의 선언 변수명을 수정해도 적용되지 않는다. 
3. 선언 후 수정하기 위해선 storyBoard 내부 코드 수정이 필요하며, 해당 변수명 우클릭 > refactor > rename 을 선택하면 일괄 수정이 가능하다.

## 스텝 4

1. 버튼을 segue 로 연결해서 다른 ViewContoroller 로 화면이동이 가능하다.
2. segue 는 세그 혹은 세그웨이 라고 발음한다.
3. 버튼의 경우 보더 설정이 안보인다. 코드로 작성해야됨.