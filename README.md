

# Photoframe-step4 - Scene and Segue

- 추가되어있는 버튼에 ViewController(Orange)를 추가하고 segue 연결
- 이동되는 첫번째 뷰에서 또 다시 버튼 설정 후 또 새로운 ViewController(purple) segue 연결



### segue의 종류

- show
  - 가장 일반적인 세그웨이 이다. 새 화면으로 이동한다. Stack 구조로서 새 화면이 원래 화면 위를 덮는 구조이다.

- Show Detail
  - SplitView 구조에서 원래 화면을 Master, 새 화면을 Detail로 표시한다.
  - 아이폰에서는 똑같아 보이지만 아이패드로 보면 화면이 둘로 분할되서 보이게 된다.

- Present Modally
  - 새 화면이 모달처럼 원래 화면 위 전체를 뒤덮는다. 원래 화면은 새 화면 뒤에 그대로 존재하게 된다.

- Popover Presentation
  - 아이패드에서 팝업창을 띄운다. 아이폰 앱한테는 Show Detail과 마찬가지로 큰 의미가 없다.

[참고](https://roeldowney.tistory.com/72)



### seque로 데이터 보내기

```swift
// 주는쪽
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            if let vc = segue.destination as? ThirdViewController {
                vc.data = "Hello!"
            }
        }
    }
}


```

```swift
// 받는 쪽
class ThirdViewController: UIViewController {
    var data: String? // init
    @IBOutlet weak var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text = data
    }
}

```



완료시간 02/09 12:55



![스크린샷 2021-02-09 오후 12 53 00](https://user-images.githubusercontent.com/62657991/107313421-d475cb80-6ad5-11eb-8ac0-c84e82c052fa.png)
![스크린샷 2021-02-09 오후 12 53 10](https://user-images.githubusercontent.com/62657991/107313428-d6d82580-6ad5-11eb-8b04-93693e85a16d.png)

