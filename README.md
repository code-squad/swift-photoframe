# PhotoFrame

## Step 5: View 생명 주기

[UIViewController](https://developer.apple.com/documentation/uikit/uiviewcontroller)

1. loadView(): View를 생성. 직접 호출하지 말라. 대신 ViewController의 view 속성을 사용할 것.
2. viewDidLoad(): View를 메모리에 올리고 나서 호출되는 함수
3. viewWillAppear(): 사용자 화면에 표시되기 전 호출
4. viewDidAppear(): 화면에 뷰가 표시된 후 호출
5. viewWillDisappear(): 화면에서 뷰가 사라지기 전 호출
6. viewDidDisappear(): 화면에서 뷰가 사라진 후 호출

```
swift-photoframe/PhotoFrame/PhotoFrame/GreenViewController.swift 18 viewDidLoad() 40
swift-photoframe/PhotoFrame/PhotoFrame/GreenViewController.swift 23 viewWillAppear(_:) 40
swift-photoframe/PhotoFrame/PhotoFrame/GreenViewController.swift 28 viewDidAppear(_:) 40
swift-photoframe/PhotoFrame/PhotoFrame/GreenViewController.swift 33 viewWillDisappear(_:) 40
swift-photoframe/PhotoFrame/PhotoFrame/GreenViewController.swift 39 viewDidDisappear(_:) 40
```

<img width="584" alt="스크린샷 2020-02-04 오후 2 59 15" src="https://user-images.githubusercontent.com/50904665/73720444-4bf77900-4765-11ea-82f3-80493b983cd6.png">

<img width="584" alt="스크린샷 2020-02-04 오후 2 59 20" src="https://user-images.githubusercontent.com/50904665/73720447-4bf77900-4765-11ea-891f-3b0746301903.png">

## Step 4: Scene과 Segue

스토리보드에서는 UI를 Scene 단위로 관리. Scene 간의 연결은 Segue(세그웨이)라 함.

### Segue의 종류

- Show
- Show Detail
- Present Modally
- PopOver Presentation
- Custom

<img width="584" alt="스크린샷 2020-02-04 오후 12 05 32" src="https://user-images.githubusercontent.com/50904665/73720448-4bf77900-4765-11ea-84a2-ee413607ea64.png">
<img width="584" alt="스크린샷 2020-02-04 오후 12 05 38" src="https://user-images.githubusercontent.com/50904665/73720449-4c900f80-4765-11ea-989b-93adf9064974.png">

## Step 3: IBAction

ViewController에 연결하면 메소드가 생성됨. 해당 이벤트 발생 시 처리할 동작 구현

View에서 입력을 받고 Controller에서 View를 업데이트

<img src="https://user-images.githubusercontent.com/50904665/73626309-d075c900-468b-11ea-8cf0-e01bcaaf47f8.png" alt="ibaction_before"  />
<img src="https://user-images.githubusercontent.com/50904665/73626312-d1a6f600-468b-11ea-8740-a9633cb97641.png" alt="ibaction_after"  />

## Step 2: IBOutlet

Controller의 변수에 해당. 뷰의 한 요소와 연결됨

1. Storyboard에서 AssistentEditor를 열면 ViewController 파일이 열린다.
2. Storyboard의 레이블을 Cotroller 파일에 `ctrl+드래그`하면 IBOutlet이 연결된다.
3. Controller에서 레이블 속성을 변경할 수 있다.

![IBOutlet](https://user-images.githubusercontent.com/50904665/73625638-09f90500-4689-11ea-8bb3-31a99d1d85bc.png)

## Step 1: viewDidLoad() 

### 시뮬레이터 실행
성공: 11:10

developer account 생성 및 sigining 필요했음

UI를 Storyboard로 선택

### viewDidLoad() 

성공: 11:20

자동 생성된 `ViewController` 내 `viewDidLoad()` 함수에 `print()` 추가하여 콘솔 확인

```swift
print(#file, #line, #function, #column)
#=>
codesquad/swift-photoframe/PhotoFrame/PhotoFrame/FirstViewController.swift 16 viewDidLoad() 40
```

