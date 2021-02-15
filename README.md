# 사진액자 앱

⚠️ 원격 저장소에 올리기 위해 `push` 시도 시, 아래와 같은 에러 메시지와 함께 실패하는 문제를 겪었다.
```
remote: Permission to 1song2/swift-photoframe.git denied to gomuori.
fatal: unable to access 'https://github.com/1song2/swift-photoframe/': The requested URL returned error: 403
```
Keychaain Access에서 git과 관련된 항목 삭제, git credential 삭제, git config 재설정 등 여러가지 방법을 시도해보았으나 모두 실패하고...😭

하지만! 아이디를 넣어 git clone 하는 방법으로 결국 성공하였다! (Many thanks to Honux)

`git clone https://1song2@github.com/1song2/swift-photoframe`

👉 다른 궁극적인(?) 해결 방법이 있나 계속 공부해보기

## Step-1. Tabbed 앱

### 미션 수행
1. 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone
2. 로컬 저장소 경로에 iOS-App 템플릿으로 프로젝트 "PhotoFrame" 생성
3. ViewController.swift 파일의 `viewDidLoad()` 함수 내 `print(#file, #line, #function, #column)` 코드 추가
* 실행 결과
```
/Users/song/development/swift/masters/2021-iOS/swift-photoframe/PhotoFrame/PhotoFrame/ViewController.swift 14 viewDidLoad() 40
```
4. TabBar Controller 및 Initial ViewController로 지정 (기존 ViewController 삭제)

**시뮬레이터 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107218811-7b655380-6a53-11eb-88e1-82a95468fb7a.png" width=50%>

**Main.storyboard 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107218910-a354b700-6a53-11eb-9643-2ea03b9d3bcc.png">

완성 일자 및 시간: 2021-02-08 09:26PM

### TIL
* `git checkout -b <new_branch>`

	Create a new branch named <new_branch> and start it at <start_point> [출처](https://git-scm.com/docs/git-checkout#Documentation/git-checkout.txt--Bltnewbranchgt)

* `git checkout -t origin/<branch_name>`

	If no -b option is given, the name of the new branch will be derived from the remote-tracking branch, by looking at the local part of the refspec configured for the corresponding remote, and then stripping the initial part up to the `"*"`. This would tell us to use hack as the local branch when branching off of origin/hack (or remotes/origin/hack, or even refs/remotes/origin/hack). If the given name has no slash, or the above guessing results in an empty name, the guessing is aborted. You can explicitly give a name with -b in such a case. [출처](https://git-scm.com/docs/git-checkout#Documentation/git-checkout.txt--t)

* Literal Expression [출처](https://docs.swift.org/swift-book/ReferenceManual/Expressions.html)

	A literal expression consists of either an ordinary literal (such as a string or a number), an array or dictionary literal, a playground literal, or one of the following special literals:

	|Literal|Type|Value|Example|
	|---|---|---|---|
	|`#file`|`String`|The path to the file in which it appears.|/Users/.../PhotoFrame/ViewController.swift|
	|`#fileID`|`String`|The name of the file and module in which it appears.||
	|`#filePath`|`String`|The path to the file in which it appears.||
	|`#line`|`Int`|The line number on which it appears.|`14`|
	|`#column`|`Int`|The column number in which it begins.|`40`|
	|`#function`|`String`|The name of the declaration in which it appears.|`viewDidLoad()`|
	|`#dsohandle`|`UnsafeRawPointer`|The dynamic shared object (DSO) handle in use where it appears.||

* UITabBarController

	To Be Added

* UITabBar

	To Be Added


## Step2. IBOutlet
1. FirstViewController에 `UILabel`을 추가
2. 레이블을 선택하고 ctrl을 누른채 코드로 드래그해 IBOutlet을 추가
3. `viewDidLoad()` 함수 안에서 아웃렛 변수에 값을 변경 (= 속성을 변경)

**시뮬레이터 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107239147-eae73d00-6a6b-11eb-8b31-c72836e3a096.png" width=50%>

**Main.storyboard 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107239309-11a57380-6a6c-11eb-8a2e-6f1b956b5f13.png">

완성 일자 및 시간: 2021-02-09 12:17AM


## Step3. IBAction
1. FirstViewController에 `UIButton`을 추가
2. 버튼을 선택하고 ctrl을 누른채 코드로 드래그해 IBAction으로 연결
3. 위에서 추가한 IBAction 메서드 안에 원하는 구현 사항을 코드로 추가

**시뮬레이터 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107318500-418e5e80-6ae0-11eb-80c4-053a9c7e4aed.gif" width=50%>

완성 일자 및 시간: 2021-02-09 02:09PM


## Step4. Scene과 Segue

### 미션 수행
1. 버튼을 선택하고 ctrl + 드래그해 Scene에 연결 (Segue)
2. Scene과 Scene 사이의 화살표를 선택해 Segue 속성 변경

**시뮬레이터 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107336213-30534b00-6afc-11eb-87ca-070aef045b19.gif" width=50%>

완성 일자 및 시간: 2021-02-09 05:27PM

### TIL

* Types of segues
	* Show (e.g. Push)
	* Show Detail (e.g. Replace)
	* Present Modally
	* Present As Popover

	To Be Added


## Step5. ViewController 프로그래밍

### 기본 미션
1. 새로운 ViewController 클래스를 생성하고 Scene에 연결
2. [닫기] 버튼에 ` self.dismiss(animated:completion:)` 코드 추가
3. 화면 관련 콜백 함수들에 `print(#file, #line, #function, #column)` 코드를 추가해 ViewController의 라이프사이클을 확인

### 추가 미션
* 버튼을 코드로 구현하기
	1. UIButton을 상수로 선언 ([다양한 버튼 타입 참고](https://developer.apple.com/documentation/uikit/uibutton/buttontype))
	```swift
	let closeButton = UIButton(type: .system)
	```
	2. 버튼의 위치, 크기, 타이틀 등을 설정
	```swift
	closeButton.frame = CGRect(x: self.view.frame.midX - closeButtonWidth / 2, y: self.view.frame.midY - closeButtonHeight / 2, width: closeButtonWidth, height: closeButtonHeight)
        closeButton.backgroundColor = UIColor.systemYellow
        closeButton.setTitle("닫기", for: .normal)
        closeButton.setTitleColor(UIColor.black, for: .normal)
	```
	3. `addTarget(_:action:for:)` method로 원하는 동작을 버튼에 추가
	```swift
	closeButton.addTarget(self, action: #selector(closeButtonTouched), for: .touchUpInside)
	```
	cf. closeButtonTouched 함수 앞에는 `@objc` 키워드를 붙여줘야 함
	4. view에 버튼을 추가
	```swift
	self.view.addSubview(closeButton)
	```

* 연결된 Segue를 코드로 구현
	1. Segue를 연결: UIButton 같은 요소를 다른 VC로 드래그해 연결하거나 혹은 VC를 다른 VC로 드래그해서도 연결할 수 있다!
	2. storyboard에서 Segue 화살표를 선택, 우측 Attributes inspector에서 identifier를 지정
	3. 버튼 등에 `performSegue(withIdentifier:sender:)` 코드를 추가해 Segue를 구현

* Segue 없이 화면간 이동
	1. 목적지가 될 ViewController의 Attributes inspector에서 Storyboard ID와 Restoration ID를 지정
	2. 출발지 ViewController에 `present(_:animated:completion:)` 코드 추가
	예시 코드
	```swift
	@IBAction func nextButtonTouched(_ sender: Any) {
        let main = UIStoryboard(name: "Main", bundle: nil)
        let redVC = main.instantiateViewController(identifier: "RedVC")
        self.present(redVC, animated: true, completion: nil)
  }
	```
	🤔 궁금증: storyboard 대신 코드로 ViewController를 구현해야해 identifier를 알 수 없는 상황이라면 어떤 방법을 사용할 수 있을까?

**시뮬레이터 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107485894-bb4d4780-6bc7-11eb-9abf-2669593c6a94.gif" width=50%>

완성 일자 및 시간: 2021-02-10 05:25PM

### TIL

* View Controller Lifecycle
	* `viewDidLoad()`
	* `viewWillAppear()`
	* `viewDidAppear()`
	* `viewWillDisappear()`
	* `viewDidDisappear()`

	To be Added

## Step6. Container ViewController

### 기본 미션
* `다음` 버튼을 누르면 다음 scene으로 이동 (`pushViewController(_:animated:)`)
* `닫기` 버튼을 누르면 이전 scene으로 이동 (`popViewController(animated:)`)
* 좌상단 `< Back` 버튼도 `닫기` 버튼과 같은 역할

### 추가 미션
* Auto Layout을 코드로 구현하기: 코드로 Auto Layout 구현 시, `translatesAutoresizingMaskIntoConstraints`를 `false`로 설정해주어야 함

**시뮬레이터 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107912618-29b45000-6fa2-11eb-9cb6-423821f7b1bb.gif">

완성 일자 및 시간: 2021-02-15 03:28PM

### TIL

#### 네비게이션 컨트롤러에서의 화면 전환 동작

* 새로운 scene으로 이동
	* `viewDidLoad()`
	* `viewWillDisappear()`
	* `viewWillAppear()`
	* `viewDidDisappear()`
	* `viewDidAppear()`
* `> Back` 버튼 or `popViewController(animated:)`
	* `viewWillDisapeear()`
	* `viewWillAppear()`
	* `viewDidDisapper()`
	* `viewDidAppear()`

## Step7. Second Scene 화면

### 기본 미션
* `다음` 버튼을 누르면 22가지 이미지 중 랜덤하게 하나를 보여줌

**시뮬레이터 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107918568-47d37d80-6fad-11eb-9dd5-5f1817ce709a.gif">

완성 일자 및 시간: 2021-02-15 04:46PM

### TIL

* UIImageView VS. UIImage
	* UIImageView
		```swift
		class UIImageView : UIView
		```
		* An object that displays a single image or a sequence of animated images in your interface.
		* Image views let you efficiently draw any imag that can be specified using a UIImage object.
	* UIImage
		```swift
		class UIImage : NSObject
		```
		* An object that manages image data in your app.
		* Assign an image to a UIImageView object to display the image in your interface.
* contentMode
|Case|Descriptioin|
|---|---|
|scaleToFill|The option to scale the content to fit the size of itself by changing the aspect ratio of the content if necessary.|
|scaleAspectFit|The option to scale the content to fit the size of the view by maintaining the aspect ratio. Any remaining area of the view’s bounds is transparent.|
|scaleAspectFill|The option to scale the content to fill the size of the view. Some portion of the content may be clipped to fill the view’s bounds.|
|redraw|The option to redisplay the view when the bounds change by invoking the setNeedsDisplay() method.|
|center|The option to center the content in the view’s bounds, keeping the proportions the same.|
|top|The option to center the content aligned at the top in the view’s bounds.|
|bottom|The option to center the content aligned at the bottom in the view’s bounds.|
|left|The option to align the content on the left of the view.|
|right|The option to align the content on the right of the view.|
|topLeft|The option to align the content in the top-left corner of the view.|
|topRight|The option to align the content in the top-right corner of the view.|
|bottomLeft|The option to align the content in the bottom-left corner of the view.|
|bottomRight|The option to align the content in the bottom-right corner of the view.|
