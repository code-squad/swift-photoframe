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
1. 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone
2. 로컬 저장소 경로에 iOS-App 템플릿으로 프로젝트 "PhotoFrame" 생성
3. ViewController.swift 파일의 viewDidLoad() 함수 내 `print(#file, #line, #function, #column)` 코드 추가
* 실행 결과
```
/Users/song/development/swift/masters/2021-iOS/swift-photoframe/PhotoFrame/PhotoFrame/ViewController.swift 14 viewDidLoad() 40
```
4. TabBar Controller 및 Initial ViewController로 지정 (기존 ViewController 삭제)

**시뮬레이터 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107218811-7b655380-6a53-11eb-88e1-82a95468fb7a.png" width=50%>

**Main.storyboard 스크린샷**

<img src="https://user-images.githubusercontent.com/56751259/107218910-a354b700-6a53-11eb-9643-2ea03b9d3bcc.png">

완성 일자 및 시간: 2021-02-08 21:26PM
