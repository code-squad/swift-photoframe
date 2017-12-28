# PhotoFrame App

## Tabbed App 템플릿 시작

### Tabbed App 템플릿 초기화면
<img src="img/1_tabbedapp_firstview.png" width="40%"></img>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="img/1_tabbedapp_secondview.png" width="40%"></img>

<br/>

### viewDidLoad()에 print(#file, #line, #function, #column) 수행

```swift
class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }

}
```

- 결과: 
 
![](img/1_command.png)

- SecondViewController 에 적용 시, Second 탭 선택 후 출력됨.

<br/>

### UITabBar와 UITabBarController의 차이: How와 What의 차이
- ***View*** : 
	- 데이터를 **어떻게** 보여주고 유저와 상호작용 시 **어떻게** 입력값을 받고 피드백을 보여줄지 아는 객체. 
- ***Controller*** : 
	- **무슨** 데이터를 보여주고 유저 입력값으로 **무엇을** 해야 하는 지 아는 객체.
- ***View와 Controller의 차이점*** : 
	- **How**와 **What**의 차이
- ***UITabBar*** : 
	- UIView로, 유저에게 **탭들을 어떻게 보여주고** 탭 클릭 시 **어떻게 반응할 건지 (피드백을 어떻게 보여줄지)** 안다.
	- 보통 UITabBarController와 함께 사용하지만, 혼자 쓰일 수도 있다.
	- 탭바는 항상 앱 아래쪽에 위치한다.
	- **UITabBarItem** 객체들을 보여준다.
	- **배경화면**이나 **틴트색** 변경으로 커스터마이즈 할 수 있다.
	- **UIToolBar**와 비슷하게 생겼지만, 쓰이는 **목적이 다르다**. 탭바는 주로 전체 앱의 모드를 변경할 때 쓰이고, 툴바는 현재 보여지는 콘텐츠 내에서 관련된 액션들을 보여주기 위해 사용한다.
	- 탭바는 선택값들이나 커스터마이즈된 값들을 **delegate 객체**에 알려준다. 이 때, 탭바를 직접 만든 경우 탭 선택/추가/제거/순서변경 등의 액션에 대해  어떻게 반응할 지를 UITabBarDelegate 구현하여 넘겨줘야 한다. **UITabBarController를 사용한 경우, 컨트롤러가 delegate 객체처럼 행동한다.**
	- 탭바를 선택했을 때, 탭바 컨트롤러는 자동으로 어떤 뷰컨트롤러를 보여줄 지 관리한다. 탭바의 탭이 선택되면 **tabBar(_:didSelect:)** 메소드가 호출되어 반응한다.(커스텀 탭바인 경우, 모두 구현해줘야 한다.)
- ***UITabBarController*** : 
	- UIViewController로, **어떤 탭들을 보여주고** 탭 클릭 시 **무엇을 할 지** 안다.
	- 특정 탭 선택 시, 해당 뷰컨트롤러의 **루트뷰**를 보여준다. (이전에 어떤 뷰를 봤건 상관없이 항상 루트뷰를 보여준다.)
	- UITabBarItem을 뷰컨트롤러와 연결시키려면, UITabBarItem 객체를 생성한 후 뷰컨트롤러의 **tabBarItem** 프로퍼티에 할당한다.(커스텀뷰가 아니면 디폴트 Item이 생성됨)
	- 유저가 **탭 선택 시, 탭바 컨트롤러는 상호작용 내용을 delegate 객체에 전달**한다.(delegate는 어떤 객체든 상관없지만, UITabBarControllerDelegate를 채택해야 함) delegate를 사용하면 다른 탭들이 선택되지 않도록 제어하거나 특정 작업을 수행하게 만들 수 있다. 또한, **탭 내부의 뷰컨트롤러가 NavigationController로 구성되어 있으면 여기서 일어나는 변화를 감지할 수 있다.**
	- 탭바 개수가 4개 이상되면, 처음 **4개 + '...'(standard More item) 탭**만 보여진다.
	- **탭바 컨트롤러의 구성**:
![](img/1_tabbar_controller.png)

<br/>

## IBOutlet으로 UILabel 적용

<center><img src="img/2_IBoutlet.png" width="40%"></img></center>

<br/>

### UILabel
#### Core Attributes
- Text: 
	- 텍스트 내용(이하 콘텐츠)은 **NSString** 또는 **NSAttributedText** 객체를 **text, attributedText 속성**에 할당할 수 있다.
	- attributedText는 NSAttributedString을 사용해서 개별 글자나 글자 그룹을 커스터마이즈 할 수 있다. 
	- **[How to make an attributed string in Swift](https://stackoverflow.com/questions/24666515/how-do-i-make-an-attributed-string-using-swift)**

<center><img src="img/2_attributedtext.png" width="50%"></img></center>

- Color
- Font
- Alignment
- Lines: 
	- **numberOfLines**: 라벨에 들어갈 최대 라인 수를 제한할 수 있다. 0으로 설정 시, 라벨 범위 내에서 최대한 들어갈 수 있는 만큼 들어가게 된다. 
- Behavior: isEnabled, isHighlighted

#### Text Spacing Attributes
- Baseline: 
	- **baselineAdjustment**: 서체 크기가 조절될 때 텍스트가 어느 위치에 들어갈지 보정해주는 속성
- Line Breaks: 
	- **lineBreakMode**: 문단에서 다음 행으로 넘어갈 시 텍스트가 잘리는 경우 어떻게 자를지, 마지막 줄에서 안 보이는 부분을 어떻게 처리할지를 결정
	- **라벨의 디폴트 크기**는 **콘텐츠가 한 줄에 다 보이는 크기**이다. 만약 오토레이아웃으로 위치 및 **가로크기만 설정해 놓으면 라벨은 자동으로 모든 콘텐츠를 보이게끔 세로 사이즈를 조정**한다.
	- 하지만 가로, 세로 모든 사이즈를 설정하게 되면 콘텐츠가 잘리는 상황에 대해 대처할 필요가 있다. 이를 해결하기 위해 Auto Shrink 속성을 활용한다.
- Auto Shrink: 라벨 내 글자 사이즈 줄이기
	- **adjustsFontSizeToFitWidth**: 라벨의 너비에 맞춰 텍스트가 모두 보일 수 있도록 해준다. true로 설정한다. 하지만 글자크기가 너무 줄어들 수 있는데, 이 때 사용하는 것이 minimumScaleFactor 속성이다. 
	- **minimumScaleFactor**: 글자 크기를 줄이는 최소 비율을 설정한다. 0 ~ 1 사이 값을 준다. 
	- **allowsDefaultTighteningForTruncation**: true로 설정 시, 글자를 자르기 전에 글자 사이의 간격을 줄이도록 한다.
	- **[UILabel 다루기 참고](http://padgom.tistory.com/category/개발/iOS)**

<center><img src="img/2_autoshrink.png" width="80%"></img></center>

#### Advanced Attributes
- Highlighted: highlightedTextColor
- Shadow: shadowColor
- Shadow Offset: shadowOffset

<br/>

## IBAction으로 버튼 동작 적용

<img src="img/3_firsttab_view1.png" width="40%"></img>
<img src="img/3_firsttab_view2.png" width="40%"></img>

<br/>

### IBOutlet과 IBAction의 연결 구조
- 뷰와 컨트롤러는 IBOutlet 또는 IBAction으로 연결된다.
- **사용자는 뷰 객체와 상호작용**하며, 뷰에 변화가 생기면 **해당 뷰와 연결되어있는 IBAction에 메시지**를 보낸다. 이 때, 해당 뷰의 포인터를 파라미터로 전달한다.
- 컨트롤러는 특정 로직을 수행하여 뷰에 변경사항이 생기면 **어떤 것을 변경하라는 지시**를 내린다. 이 때, **해당 뷰의 포인터인 IBOutlet을 사용**한다.

![](img/3_mechanism.png)

### IBAction 이벤트 종류
- ***Touch Up Inside***: 
	- A **touch-up** event in the control where **the finger is inside the bounds** of the control.
- ***Touch Up Outside***: 
	- A **touch-up** event in the control where **the finger is outside the bounds** of the control.
- ***Touch Cancel***: 
	- A **system event** canceling the current touches for the control.
- ***Touch Down***: 
	- A **touch-down** event in the control.
- ***Touch Down Repeat***: 
	- A repeated touch-down event in the control; for this event **the value of the UITouch tapCount method is greater than one**.
- ***Touch Drag Enter***: 
	- An event where a **finger is dragged into the bounds** of the control.
- ***Touch Drag Inside***: 
	- An event where a **finger is dragged inside the bounds** of the control.
- ***Touch Drag Outside***: 
	- An event where a **finger is dragged just outside the bounds** of the control.
- ***Touch Drag Exit***: 
	- An event where a **finger is dragged from within a control to outside its bounds**.
- ***Value Changed***: 
	- A touch dragging or otherwise manipulating a control, **causing it to emit a series of different values**.
- ***PrimaryActionTriggered***: 
	- A semantic action triggered by buttons.
- ***Editing Did Begin***: 
	- **A touch initiating an editing session** in a UITextField object **by entering its bounds**.
- ***Editing Changed***: 
	- **A touch making an editing change** in a 
UITextField object.
- ***Editing Did End***: 
	- **A touch ending an editing session** in a UITextField object **by leaving its bounds**.
- ***(Editing) Did End On Exit***: 
	- **A touch ending an editing session** in a 
UITextField object.

**[참고: UIControlEvents](https://developer.apple.com/documentation/uikit/uicontrolevents)**

![](img/3_IBAction_events.png)

<br/>

# .gitignore 설정하기
## 사용 목적
- **원격 저장소 폴더에 올리고 싶지 않은 파일 또는 폴더가 있을 때**, .gitignore파일에 해당 파일 또는 폴더를 추가하여 제외 가능하다.
- 한 번 제외된 파일 또는 폴더는 commit 대상에서 제외된다.
- **깃허브로 협업 시, SwiftLint를 cocoapod 으로 설치한 경우는 install 이후에 생기는 Pods 하위 디렉토리를 ignore 시켜야 한다. 다른 개발자도 pod install로 다운받아 빌드하는 것이 권장된다.**

## 커맨드라인에서 사용하기 (macOS, bash.sh 기준)
### 설치
```
$ echo "function gi() { curl -L -s https://www.gitignore.io/api/\$@ ;}" >> ~/.bash_profile && source ~/.bash_profile
```
### 사용 예시
```
gi cocoapods >> .gitignore
```

## 정상적으로 적용되지 않는 경우
- 이미 푸시한 레파지토리의 .gitignore에 내용 추가 시, **이미 저장소에 푸시된 내용이 삭제되지는 않는 경우**가 있음.
 
### 해결방법
 
```swift
$ git rm -r --cached .
$ git add .
$ git commit -m "fixed untracked files”
```
**[출처: 아이군의 블로그](http://theeye.pe.kr/archives/2091)**