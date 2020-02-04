# STEP.1 사진액자 앱

#### 1. viewDidLoad() 에 print(#file, #line, #function, #column) 추가
<img width="1111" alt="스크린샷 2020-02-03 오전 11 30 26" src="https://user-images.githubusercontent.com/50410213/73621285-e037e200-4678-11ea-966e-e692fcb52e82.png">

#### 2. 레이블 IBOutlet 으로 연결
```swift
class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = "또치의 사진액자"
        self.firstLabel.textColor = .white
        self.firstLabel.backgroundColor = .darkGray
        self.firstDescription.text = "스위프트 어려워요"
        self.firstDescription.font = .systemFont(ofSize: 50, weight: .bold)
        self.firstDescription.textColor = .brown
    }
}
```
<img width="353" alt="스크린샷 2020-02-03 오전 11 56 51" src="https://user-images.githubusercontent.com/50410213/73622243-525df600-467c-11ea-9b71-f4b0c51b35fe.png">

#### 3. 버튼 IBAction 으로 연결

```swift
@IBAction func nextButtonTouched(_ sender: Any) {
    self.firstLabel.textColor = UIColor.blue
    self.firstLabel.backgroundColor = UIColor.yellow
    self.firstLabel.alpha = 0.5
}
```

* 버튼 누르기 전
<img width="498" alt="스크린샷 2020-02-03 오후 8 45 47" src="https://user-images.githubusercontent.com/50410213/73650766-3da65000-46c6-11ea-879a-231d414ce7d9.png">

* 버튼 누른 후
<img width="497" alt="스크린샷 2020-02-03 오후 8 46 02" src="https://user-images.githubusercontent.com/50410213/73650773-41d26d80-46c6-11ea-8b0a-482dd47391aa.png">

#### 4. 새로운 Scene과 Segue 추가

<img width="435" alt="스크린샷 2020-02-04 오전 11 31 29" src="https://user-images.githubusercontent.com/50410213/73708680-61a77700-4742-11ea-80c2-4e6438dac423.png">
<img width="435" alt="스크린샷 2020-02-04 오전 11 31 35" src="https://user-images.githubusercontent.com/50410213/73708681-61a77700-4742-11ea-9dd6-87d749664423.png">
<img width="435" alt="스크린샷 2020-02-04 오전 11 31 41" src="https://user-images.githubusercontent.com/50410213/73708682-61a77700-4742-11ea-99f7-49dd2c888400.png">
<img width="435" alt="스크린샷 2020-02-04 오전 11 31 49" src="https://user-images.githubusercontent.com/50410213/73708683-62400d80-4742-11ea-9c08-0d04c4128c8f.png">

#### 5. 닫기 버튼 추가, 화면 관련 콜백 함수

1. 닫기 버튼 추가
```swift
@IBAction func closeButtonTouched(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
}
```

<img width="495" alt="스크린샷 2020-02-04 오후 2 01 27" src="https://user-images.githubusercontent.com/50410213/73715321-f4eaa780-4756-11ea-90eb-c1fceca2077a.png">
<img width="495" alt="스크린샷 2020-02-04 오후 2 01 33" src="https://user-images.githubusercontent.com/50410213/73715323-f5833e00-4756-11ea-843a-210d17a9c318.png">
<img width="495" alt="스크린샷 2020-02-04 오후 2 01 37" src="https://user-images.githubusercontent.com/50410213/73715324-f5833e00-4756-11ea-8fdb-d8438c56b1d5.png">

2. 화면 관련 콜백 함수
```swift
viewWillAppear()
viewDidAppear()
viewWillDisappear()
viewDidDisappear()
```

각 함수마다 breakpoint 를 걸어서 동작을 확인하였음

* viewWillAppear() - 화면이 나타나기 직전에 실행
* viewDidAppear() - 화면이 나타난 직후에 실행
* viewWillDisappear() - 화면이 없어지기 직전에 실행
* viewDidDisappear() - 화면이 없어진 직후에 실행

#### 6. Embed NavigationController

<img width="436" alt="스크린샷 2020-02-04 오후 3 50 44" src="https://user-images.githubusercontent.com/50410213/73720974-89103b00-4766-11ea-9f69-2b7856a2a65f.png">
<img width="436" alt="스크린샷 2020-02-04 오후 3 50 49" src="https://user-images.githubusercontent.com/50410213/73720976-89a8d180-4766-11ea-9ae3-ac1f7343a45b.png">
<img width="436" alt="스크린샷 2020-02-04 오후 3 50 55" src="https://user-images.githubusercontent.com/50410213/73720977-89a8d180-4766-11ea-85cc-2a624f495c78.png">

```swift
@IBAction func nextButtonTouched(_ sender: Any) {
    let currentView = UIStoryboard(name: "Main", bundle: nil)
    let nextView = currentView.instantiateViewController(identifier: "YellowVC")
    self.navigationController?.pushViewController(nextView, animated: true)
}
    
@IBAction func closeButtonTouched(_ sender: Any) {
    self.navigationController?.popViewController(animated: true)
}
```
* NavigationViewController는 stack으로 구현되어 있어서 기존의 present 방식으로 화면을 띄우는게 아닌 push로 화면을 띄워줘야함.
* 화면 관련 콜백함수로 확인해본 결과 present 로 띄우고 dismiss 로 닫는건 띄워진 view 를 계속 살려두는 반면 push, pop 으로 띄우고 닫은건 그때그때 화면을 없애주었음.

#### 6. ImageView

<img width="471" alt="스크린샷 2020-02-04 오후 5 50 27" src="https://user-images.githubusercontent.com/50410213/73728570-eca26480-4776-11ea-95c2-534d344f4d54.png">
<img width="471" alt="스크린샷 2020-02-04 오후 5 50 34" src="https://user-images.githubusercontent.com/50410213/73728571-eca26480-4776-11ea-9585-b3c8d417de43.png">

```swift
class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.contentMode = .scaleToFill
        self.photoImageView.image = UIImage(named: "01.jpg")
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randNum = Int.random(in: 1...22)
        
        self.photoImageView.image = UIImage(named: randNum < 10 ? "0\(randNum).jpg" : "\(randNum).jpg")
    }
    
}
```
* contentMode 로 이미지가 꽉 차게 출력되도록 해줌
* 초기 이미지를 설정해줌
* 다음 버튼을 누를 때 마다 랜덤으로 이미지 출력되도록 해줌