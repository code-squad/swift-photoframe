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
