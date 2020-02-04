# PhotoFrame

## Step 8: 

- z축을 조정: 컨트롤 목록에서 아래에 있을 수록 앞쪽에 나타남. 즉 z값이 높다.

### 미디어 라이브러리 사용

사용자의 사진, 동영상을 접근, 사용

#### UIImagePickerController

- 이미지, 동영상 등을 선택하는 기능을 함
- modality 형식

#### 구현 방법

- `UIImagePickerController() `생성
- `UIViewController.present()`로 표시
- delegate 지정: 포함하고 있는 뷰 컨트롤러에 지정
- delegate 구현 필요: `UIImagePickerControllerDelegate, UINavigationControllerDelegate, imagePickerController()`
- `imagePickerController()`: 이미지 선택 액션(pick)이 발생했을 때 실행됨

![image_picker01](https://lh3.googleusercontent.com/Awj_D5hDvCyhIkiRH2oyt53eGS7rw6JLyxnEJpY7n2vIwFp8mCmtn0pkkvY1AU-M1aKQQXhc5N-sMNHbmAw1R105dDxKDcAZ0JyCGZM2yST0r92XrETGNoyiJG4yQl513-SBwxA_6g_O6JOntBoN9XNs0Cx7Gy23jemjl_ZKZGWj-X-VENHOIVUe6gSMsAPnozabFcwSvj-9q5F-bg_CQbuvw9bMzRSyu9a0qLJlLiXfrfwII-4LN0pGbYzemYkkpYGbgzdH4dIgOrQ8P1ZuY2LudMC7IWqf52QnKwL-1_K3ewMT1nNPOs6VQOsl3chnPqzfqSClAWxcFaT9p5jLkKSkNti137-jbJrff22tJ-F8JaNujpcfmJ0gUkmIagOAer-GyEncr8OHHaxM6kTd5JVXqOB3Qck05roGEy-0YydzDlHxTVPhPbrC3MBC6q2SFfqcFe9iX9ZrLe0PuA4HiS4NuqaXXDc1UQkobNyY4fQ-nw94zwrfoVWHfmSQBOSUQ5Ys1ir4v2KZTgg4iTtkFnIWN0KnNTDbZvWbQnCTdp0XkmjlzWhGfvxxmsKi0Xpu4CQYsxo19yJnWiNkpSTRAqhh4kBLr2WfvcNxiSvLgp4ewgx6w2o343Uph7wQh162TP_VM_rR03lFlgdecs8LG4DkNX9Z7FeB_3Dj54GUE0P48Mch=w554-h994-no)

![image_picker02](https://lh3.googleusercontent.com/SigTO-ufrOvMn87t2FjTiT8FgyLLvSFSTAHVuXV1AfB3rVGnB_a0h6FTltsSMJbYPgPEsl8SgMCsGE16XbD-oAfJe8D9TxzWd32x-I2APZcKp_WdslsziYqyXU73S0EhEVYaVPGiqN2Io0T7v-kBTd99-jixptbIL5WLXNGpiozP5PN5nRY9MXdfhYJP0gTUD-cYy_mLv_0PFNGhYQKSCubfpj5KYdSwxP1oxSnDjoNtUDaZZqqpbnxGbhMfefouBugCF_-yftr_xqo8Ejylk0dMIkqiSTGQkVgFMwPaCsD8rA2mOmKHkwj_oMldZQDmof0TinZHV4vqKGT0pFlIlUDYXpElRGnqHLlcYgCoc4NrjqHr8Z3UdzrPu7LHiSmxlV7QjuWsUweCCwaWrYETQMV_MbR07Xw6G6A3Qd-qk-XH-uuDRtcqDJPrQ0FVujmW2owBnhVsqoR3fSLe9avP_Znj0AI4D-rAkMK5JyHOMcaS07Z4Ngnr1ZATIHDu4E3tgnOII96T2P8POtuf-aXh14KAUHRxCCh0jf8S4In9q5sVlM7B-ejAorcv1c6Hrs-0nyQMOwb2dg0AFP1JnjlNyrJgo3al2wN1WcvysfCKYYZiXM3TGgz3QzuKilxTMCpMqtt2Yp7TX9Fum_KJBwDKugCTgX-nLb6uguLCMKfn19dHPprX=w554-h994-no)



## Step 7: UIImageView

### UIImageView

- UIView 상속
- 이미지를 표시하기 위한 객체. `UIImage` 객체 사용
- 이미지 크기를 조정할 수 있음
- 투명도를 줄수 있음
- 사용자의 이벤트는 기본적으로 꺼져 있음.

#### 속성

- `image`: 표시될 이미지
- `highlightedImage`: 하이라이트될 때 표시할 이미지
- `isHighlighted`: 하이라이트 여부
- `isUserInteractionEnabled` : 사용자 이벤트 수용 여부. 기본값은 `false`
- `animationImages`: 애미메이션에 사용될 `UIImage` 배열
- 

### UIImage

- 이미지 데이터를 다루기 위한 객체
- 실제 이미지 파일을 다루는 객체.
- 버튼, 슬라이더 같은 컨트롤을 이미지로 꾸밀 수 있음.
- immutable
- 이미지를 늘릴 수 있게 하려면(Stretchable) inset을 정의해야 함

<img width="584" alt="스크린샷 2020-02-04 오후 6 47 54" src="https://user-images.githubusercontent.com/50904665/73733261-f9c35180-477e-11ea-97b3-3713f40ecad8.png">

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

### Segue

Scene 간 연결. 데이터 전송

#### 종류

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

