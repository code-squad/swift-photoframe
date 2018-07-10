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

1. Storyboard 의 UILabel 을 IBOutlet 으로 viewController 에 photoLabel 변수로 연결
2. @IBOutlet weak var photoLabel: UILabel! 로 코드 자동 생성
3. self.photoLabel.인자 로 해당 UILabel 속성값 조절 가능

## 스텝 3

1. 버튼을 IBAction 으로 연결하면 터치 시 해당 펑션이 작동한다.
2. IBOutlet, IBAction 등으로 ViewController 에 연결하면 ViewController 내부의 선언 변수명을 수정해도 적용되지 않는다. 
3. 선언 후 수정하기 위해선 Storyboard 내부 코드 수정이 필요하며, 해당 변수명 우클릭 > refactor > rename 을 선택하면 일괄 수정이 가능하다.

## 스텝 4

1. 버튼을 segue 로 연결해서 다른 ViewContoroller 로 화면이동이 가능하다.
2. segue 는 세그 혹은 세그웨이 라고 발음한다.
3. 버튼의 경우 보더 설정이 안보인다. 코드로 작성해야됨.
4. UIStoryboardSegue
	- An object that prepares for and performs the visual transition between two view controllers.
	- You do not create segue objects directly. Instead, the storyboard runtime creates them when it must perform a segue between two view controllers.

## 스텝 5

1. dismiss 명령어는 view 를 메모리에서 내린다.
2. 생명주기 순서는 다음뷰 로드 -> 이전뷰 사라짐 예고 -> 다음뷰 생김 예고 -> 다음뷰 생김 완료 -> 이전뷰 사라짐 완료 순. 다음뷰가 생성 완료 되어야 이전뷰가 사라진다.
	1. A.viewDidLoad()
	2. A.viewWillAppear()
	3. A.viewDidAppear()
	4. B.viewDidLoad()
	5. A.viewWillDisappear()
	6. B.viewWillAppear()
	7. B.viewdidAppear()
	8. A.viewDidDisappear()
3. segue 를 사용하지 않고 코드로 화면이동 하는 방법. 요점은 present 메소드 사용.
	1. 버튼생성 후 IBAction 으로 연결
	2. 이하 코드를 이용하여 연결

> let ViewController인스턴스 = self.storyboard?.instantiateViewController(withIdentifier: “Storyboard ID값”)
ViewController인스턴스?.modalTransitionStyle = UIModalTransitionStyle.coverVertical
self.present(ViewController인스턴스!, animated: true, completion: nil)

>출처 : https://medium.com/@mingdaejo/ios-%ED%99%94%EB%A9%B4-%EC%A0%84%ED%99%98-b979188a1a82

## 스텝 6

1. 네이게이션 컨트롤러의 장점 : 현재 위치를 유저에게 쉽게 알려주고 순서대로 이동하도록 유도.
2. 단점 : 
3. Although the navigation bar and toolbar are customizable views, you must never modify the views in the navigation hierarchy directly. The only way to customize these views is through methods of the UINavigationController and UIViewController classes. 왜 직접 수정하면 안되는지 후술.
4. In most cases, you do not have to pop view controllers off the stack programmatically. Instead, the navigation controller provides a back button on the navigation bar that pops the topmost view controller automatically when the user taps it.
5. When a navigation bar is used in conjunction with a navigation controller, you always use the setNavigationBarHidden:animated: method of UINavigationController to show and hide the navigation bar. You must never hide the navigation bar by modifying the UINavigationBar object’s hidden property directly. 네비게이션 바 를 숨기는것은 가능하며 UINavigationController 의 속성을 사용할것. UINavigationBar의 속성은 건들지 말것.
6. 