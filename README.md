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

# 진행 방법

- 포토프레임에 대한 요구사항을 파악한다.
- 요구사항에 대한 구현을 완료한 후 자신의 github 아이디에 해당하는 브랜치에 Pull Request(이하 PR)를 통해 코드 리뷰 요청을 한다.
- 코드 리뷰 피드백에 대한 개선 작업을 하고 다시 PUSH한다.
- 모든 피드백을 완료하면 다음 단계를 도전하고 앞의 과정을 반복한다.

# 코드 리뷰 과정
> 저장소 브랜치에 자신의 github 아이디에 해당하는 브랜치가 존재해야 한다.
>
> 자신의 github 아이디에 해당하는 브랜치가 있는지 확인한다.

1. 자신의 github 아이디에 해당하는 브랜치가 없는 경우 브랜치 생성 요청 채널을 통해 브랜치 생성을 요청한다.
프로젝트를 자신의 계정으로 fork한다. 저장소 우측 상단의 fork 버튼을 활용한다.

2. fork한 프로젝트를 자신의 컴퓨터로 clone한다.
```
git clone https://github.com/{본인_아이디}/{저장소 아이디}
ex) https://github.com/godrm/swift-photoframe
```

3. clone한 프로젝트 이동
```
cd {저장소 아이디}
ex) cd swift-photoframe
```

4. 본인 아이디로 브랜치를 만들기 위한 checkout
```
git checkout -t origin/본인_아이디
ex) git checkout -t origin/godrm
```

5. 기능 구현을 위한 브랜치 생성 (연속번호를 붙여나간다)
```
git checkout -b 브랜치이름
ex) git checkout -b photoframe-step1
```

6. commit
```
git status //확인
git rm 파일명 //삭제된 파일
git add 파일명(or * 모두) // 추가/변경 파일
git commit -m "메세지" // 커밋
```

7. 본인 원격 저장소에 올리기
```
git push --set-upstream origin 브랜치이름
ex) git push --set-upstream origin photoframe-step1
```

8. pull request
	- pull request는 github 서비스에서 진행할 수 있다.
	- pull request는 original 저장소의 브랜치(자신의 github 아이디)와 앞 단계에서 생성한 브랜치 이름을 기준으로 한다.

	```
	ex) code-squad/swift-photoframe godrm 브랜치 기준 => godrm/swift-photoframe store-step1
	```
	
9. code review 및 push
	- pull request를 통해 피드백을 받는다.
	- 코드 리뷰 피드백에 대한 개선 작업을 하고 다시 PUSH한다.

10. 기본(upstream) 브랜치 전환 및 base 저장소 추가하기(최초 시작하기 단계 한번만 하면 됨)

	```
	git checkout 본인_아이디
	git remote add upstream base_저장소_url

	ex) git checkout godrm
	ex) git remote add upstream https://github.com/code-squad/swift-photoframe.git
	```

	- 위와 같이 base 저장소 추가한 후 remote 브랜치 목록을 보면 4개가 보여야 한다.

	```
	git remote -v
	```

11. 기본 base 저장소와 sync하기 (PR 보낸 내용을 자신의 기본 저장소와 합치기)

	```
	git fetch upstream
	git rebase upstream/본인_아이디
	ex) git rebase upstream/godrm
	```

12. 다음 미션을 해결할 경우 [5단계 브랜치 생성]부터 다시 진행

## 동영상을 통한 코드 리뷰() 를 통해 참고 가능

- [fork하여 코드 리뷰하기](https://www.youtube.com/watch?v=ZSZoaG0PqLg) 
- [PR 보내고 다시 PR보낼 때 유의 사항](https://www.youtube.com/watch?v=CbLNbCUsh5c&feature=youtu.be)

## 실습 중 모든 질문은 슬랙 채널에서...
