# PhotoFrame
## Step 1
### 시뮬레이터 실행
성공: 11:10
developer account 생성 및 sigining 필요했음
UI를 Storyboard로 선택

### viewDidLoad() 11:20
자동 생성된 `ViewController` 내 `viewDidLoad()` 함수에 `print()` 추가하여 콘솔 확인

```swift
print(#file, #line, #function, #column)
#=>
codesquad/swift-photoframe/PhotoFrame/PhotoFrame/FirstViewController.swift 16 viewDidLoad() 40
```

## Step 2
### IBOutlet
1. Storyboard에서 AssistentEditor를 열면 ViewController 파일이 열린다.
1. Storyboard의 레이블을 Cotroller 파일에 `ctrl+드래그`하면 IBOutlet이 연결된다.
1. Controller에서 레이블 속성을 변경할 수 있다.

![IBOutlet](https://user-images.githubusercontent.com/50904665/73625638-09f90500-4689-11ea-8bb3-31a99d1d85bc.png)

## Step 3
### IBAction
