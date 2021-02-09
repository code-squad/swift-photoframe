## Step 1 - Tabbed App
자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 `print(#file, #line, #function, #column)` 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.
```
/Users/ador/swift-photoframe/PhotoFrame/PhotoFrame/ViewController.swift 15 viewDidLoad() 40
```

## Step 2 - IBOutlet
- First View label을 `IBOutlet`으로 연결한다.
- 코드로 label 속성을 변경한다.
- 완성 : `21.02.09. 10:30`
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

<img width="291" alt="스크린샷 2021-02-09 오후 5 05 04" src="https://user-images.githubusercontent.com/75113784/107341625-8dea9600-6b02-11eb-89fd-e8f8b1ad35df.png"><img width="291" alt="스크린샷 2021-02-09 오후 5 05 08" src="https://user-images.githubusercontent.com/75113784/107341606-89be7880-6b02-11eb-8ced-bd7aa2651780.png">
