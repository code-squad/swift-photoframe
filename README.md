## Step1 - A tabbed app

viewDidLoad() 함수에서 아래 코드를 추가하고 결과를 확인

```swift
print(#file, #line, #function, #column)
```

Console

```
/Users/corykim/Documents/projects/code-squad/iOS-class/swift-photoframe/PhotoFrame/PhotoFrame/FirstViewController.swift 16 viewDidLoad() 40
```

<br>

## Step2 - IBOutlet

- 만들어져 있는 레이블을 IBOutlet으로 연결
- 연결한 아웃렛 변수에 값을 변경

<img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step2.png?raw=true" width="240px">

## Step3 - IBAction

- UIButton 추가
- IBAction에 연결 후 메서드 구현

<img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step3-1.png?raw=true" width="240px"><img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step3-2.png?raw=true" width="240px">

## Step4 - Scene & Segue

- ViewController 추가 후 `다음 버튼` 으로 segue 연결
- 추가된 ViewController에 버튼 추가 후 ViewController 추가 후 segue 연결

<img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step4-1.png?raw=true" width="240px"><img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step4-2.png?raw=true" width="240px">

## Step5 - ViewController Programming

- 만들어진 ViewController class file 생성 및 연결
- close 버튼 생성 및 IBAction으로 dismiss 구현
- 모든 ViewController에서 View Life-cycle 확인
- FirstViewController에서 OrangeViewController로 가는 segue 제거 및 프로그래밍적으로 구현

<img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step5-1.png?raw=true" width="240px"><img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step5-2.png?raw=true" width="240px">

<img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step5-3.png?raw=true" width="800px">

## Step6: Container ViewController

- First ViewController에 Navigation Controller를 Embed
- 기존 next action의 present 코드를 navigationController의 push 메소드로 변경
- 기존 close action의 dismiss 코드를 navigationController의 pop 메소드로 변경
- skyViewController로 가는 segue도 programmatically 변경 (마찬가지로 push 메소드로 구현)
- 뷰컨트롤러 콜백 함수: navigation controller에서는 push되면 기존의 VC의 disappear가 실행된다.
  - navigation controller가 아닌 일반적인 VC에서는 dismiss할 때에만 disappear가 반응했다.

<img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step6-1.png?raw=true" width="240px"><img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step6-2.png?raw=true" width="240px"><img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step6-3.png?raw=true" width="240px">

<img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step6-4.png?raw=true" width="800px">

## Step7: Second Scene View

- UIImageView 추가 및 크기 설정
- next button 추가 IBAction 연결
- 다운로드받은 이미지 파일들 추가
- viewDidLoad()에서 imageView의 contentMode 설정
- nextButton에 random 이미지 설정 구현
- 중복 숫자 제외 기능 추가

<img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step7-1.png?raw=true" width="240px"><img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step7-2.png?raw=true" width="240px">

## Step8: Wrap up

- 액자 imageView 추가
- select button 추가 및 IBAction 연결
- UIImagePickerControllerDelegate, UINavigationControllerDelegate 상속
- info.plist 설정
- imagePickerController 옵션 설정
- imagePickerController에서 선택한 사진 photoImageView에 반영

<img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step8-1.png?raw=true" width="240px"><img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step8-2.png?raw=true" width="240px"><img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step8-3.png?raw=true" width="240px"><img src="https://github.com/corykim0829/swift-photoframe/blob/corykim0829/screeenshots/step8-4.png?raw=true" width="240px">