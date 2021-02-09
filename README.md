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
