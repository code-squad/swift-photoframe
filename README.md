## Step 1 - Tabbed App
자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 `print(#file, #line, #function, #column)` 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.
```
/Users/ador/swift-photoframe/PhotoFrame/PhotoFrame/ViewController.swift 15 viewDidLoad() 40
```

## Step 2 - IBOutlet
- First View label을 `IBOutlet`으로 연결한다.
- 코드로 label 속성을 변경한다.
<img width="291" alt="step2" src="https://user-images.githubusercontent.com/75113784/107304394-5230db80-6ac4-11eb-9b5c-142c4797e70c.png">

## Step 3 - IBAction
- First View에 next 버튼 추가
- next 버튼에 `IBAction` 연결하고 구현부 작성

<img width="291" alt="before" src="https://user-images.githubusercontent.com/75113784/107311569-e6ee0600-6ad1-11eb-95f6-3538d4292ed2.png"><img width="291" alt="next" src="https://user-images.githubusercontent.com/75113784/107311279-66c7a080-6ad1-11eb-9ee6-da09811eb0ae.png">

## Step 4 - Segue
- `Main.storyboard`에 scene 추가
- 새로운 scene으로 segue 연결

<img width="291" alt="yellow" src="https://user-images.githubusercontent.com/75113784/107325121-8fa95f00-6aec-11eb-81af-fdacc7c3b4af.png"><img width="291" alt="blue" src="https://user-images.githubusercontent.com/75113784/107325124-91732280-6aec-11eb-86b4-ac33a2e55f32.png">

## Step 5 - ViewController
- custom view controller를 생성하고 main 스토리보드에서 연결
- 스토리보드에서 segue를 제거하고 custom class에서 IBAction으로 화면 전환하도록 수정
- close 버튼과 action 추가
- view life cycle과 관련된 콜백 함수의 동작 확인

<img width="291" alt="step5-1" src="https://user-images.githubusercontent.com/75113784/107341625-8dea9600-6b02-11eb-89fd-e8f8b1ad35df.png"><img width="291" alt="step5-2" src="https://user-images.githubusercontent.com/75113784/107341606-89be7880-6b02-11eb-8ced-bd7aa2651780.png">

## Step 6 - Container ViewController
- Navigation Controller embed in
- 네비게이션 화면 전환을 위해 `present()`에서 `pushViewController()`로 변경
- 스토리보드에서 navigation bar 영역에 BarButtonItem 추가하고 IBAction 연결

<img width="291" alt="step6-1" src="https://user-images.githubusercontent.com/75113784/107466677-cc865c00-6ba7-11eb-9dfb-9fd018d87473.png"><img width="291" alt="step6-2" src="https://user-images.githubusercontent.com/75113784/107466683-d0b27980-6ba7-11eb-8fc7-db7b2ab8727c.png">

## Step 7 - Second Scene
- 두 번째 tab bar 화면에 UIImageView 추가
- 다음 버튼을 클릭할 때마다 asset 에서 랜덤하게 이미지를 가져오도록 구현
- image는 비율을 유지하면서 크기에 맞게 표시
- second scene의 autolayout 설정

<img width="291" alt="step7" src="https://user-images.githubusercontent.com/75113784/107775790-1deb4280-6d84-11eb-8a00-d450f42efc79.png">

## Step 8 - Photo Frame
- PhotoFrame 이미지뷰 추가
- UIImagePickerController로 사진 앱에서 이미지를 선택해 가져올수 있도록 추가

<img width="291" alt="step8-2" src="https://user-images.githubusercontent.com/75113784/107776334-c5687500-6d84-11eb-86f8-1ec336f69480.png"><img width="291" alt="step8-1" src="https://user-images.githubusercontent.com/75113784/107776309-c00b2a80-6d84-11eb-86eb-c9d745386ca2.png">
