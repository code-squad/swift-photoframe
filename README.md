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