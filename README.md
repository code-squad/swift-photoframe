# PhotoFrame

## Step 1 (2019-06-20)

### 리터럴 표현식 (Literal Expression)

리터럴 | 유형 | 값
------- | ---- | -----
`#file` | `String` | 코드가 실행된 파일 디렉토리입니다.
`#line` | `Int` | 코드가 실행된 줄의 번호입니다.
`#column` | `Int` | 코드가 시작된 열의 번호입니다.
`#function` | `String` | 코드가 실행된 함수의 이름입니다.

![리터럴_표현식](asset/리터럴_표현식.png)


## Step 2 (2019-06-20)

### UILabel

UILabel를 사용하여 View에서 텍스트를 나타낼 수 있습니다.

#### 사용된 UILabel의 속성들
속성 | 유형 | 설명
--- | --- | ---
Text | String | 표시되는 문자열입니다. (예: `firstLabel.text = "SK의 사진 액자"`)
Text Color | UIColor | 텍스트의 색상입니다. (예: `firstLabel.textColor = UIColor(red: 1.0, green: 0.5, blue: 1.0, alpha: 1)`)
Font | UIFont | 텍스트의 서체입니다. (예: `firstDescription.font = UIFont(descriptor: .init(), size: 50)`)

![Step2](asset/Step2_스크린샷.png)


## Step 3 (2019-06-20)

### `@IBOutlet`

- 화면 상의 객체를 소스 코드에서 참조하기 위해 사용합니다.
- 텍스트 레이블 등의 화면에 나타내는 부분을 업데이트하기 위해 사용합니다.

### `@IBAction`

- 특정 객체에서 지정된 이벤트가 발생했을 때 명령을 실행하고 싶을 때 사용합니다.
- 버튼이 탭이 되는 등 이벤트가 발생하면 연결된 명령을 실행합니다.

![Step3](asset/Step3_스크린샷.png)
