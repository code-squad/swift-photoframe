# PhotoFrame
## Step1
#### 요구사항
- `print(#file, #line, #function, #column)`를 출력한다

#### 결과
```
/Users/git/swift-photoframe/PhotoFrame/BlueViewController.swift 14 viewDidLoad() 40
/Users/git/swift-photoframe/PhotoFrame/YellowViewController.swift 32 viewWillDisappear(_:) 40
/Users/git/swift-photoframe/PhotoFrame/BlueViewController.swift 23 viewWillAppear(_:) 40
/Users/git/swift-photoframe/PhotoFrame/YellowViewController.swift 35 viewDidDisappear(_:) 40
/Users/git/swift-photoframe/PhotoFrame/BlueViewController.swift 26 viewDidAppear(_:) 40
```

```
파일 경로/실행된 함수의 줄 수/실행된 함수/colum
```

## Step2

#### 요구사항
- ViewController 클래스 viewDidLoad() 함수에서 위에 추가한 아웃렛 변수에 값을 변경한다.
- 버튼을 추가한다.
- segue를 이용하여 화면을 전환한다.
- TabBar Controller와 Navigation Controller를 추가한다.

#### 결과
<img width="350" alt="Screen Shot 2021-02-13 at 8 16 05 PM" src="https://user-images.githubusercontent.com/60229909/107848630-4df41d80-6e38-11eb-8c81-36d0cc94f428.png">
<img width="350" alt="Screen Shot 2021-02-13 at 8 16 14 PM" src="https://user-images.githubusercontent.com/60229909/107848633-53e9fe80-6e38-11eb-9f71-a1f4369a20cd.png">
<img width="350" alt="Screen Shot 2021-02-13 at 8 16 23 PM" src="https://user-images.githubusercontent.com/60229909/107848637-58aeb280-6e38-11eb-96e0-a82c54f05f8a.png">

## Step3
- 버튼을 누르면 이미지를 불러와서 UIImageView에 띄운다.
- 사질 라이브러리(앨범)를 통하여 사진을 불러온다.
- 불러온 사진을 보여준다.

#### 추가사항
- 사진을 선택하지 않은 경우 alert 창을 띄운다.

#### 결과
<img width="350" alt="Screen Shot 2021-02-13 at 8 17 04 PM" src="https://user-images.githubusercontent.com/60229909/107848647-711ecd00-6e38-11eb-846d-8ac6baf83d1f.png">
<img width="350" alt="Screen Shot 2021-02-13 at 8 17 12 PM" src="https://user-images.githubusercontent.com/60229909/107848650-75e38100-6e38-11eb-89b6-3ba8382723ce.png">
<img width="350" alt="Screen Shot 2021-02-13 at 8 17 20 PM" src="https://user-images.githubusercontent.com/60229909/107848654-7aa83500-6e38-11eb-977d-514f6208552e.png">
<img width="350" alt="Screen Shot 2021-02-13 at 8 17 41 PM" src="https://user-images.githubusercontent.com/60229909/107848662-872c8d80-6e38-11eb-8702-3ef09c415281.png">
<img width="350" alt="Screen Shot 2021-02-13 at 8 17 48 PM" src="https://user-images.githubusercontent.com/60229909/107848665-8b58ab00-6e38-11eb-80f6-2a05752d9ca3.png">
<img width="350" alt="Screen Shot 2021-02-13 at 8 18 02 PM" src="https://user-images.githubusercontent.com/60229909/107848668-93b0e600-6e38-11eb-8296-6213d18910f0.png">
