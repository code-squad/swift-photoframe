

# Photoframe-step5 - ViewController Programming

- `viewWillAppear`, `viewDidLoad`, `viewWilldisappear`, `viewDidDisappear` 각 ViewComtroller에 넣고 언제 동작하는지 확인
- `closeButtonTouched` IBAction 연결 후 `dismiss` 동작 확인



#### UIViewController Lifecycle [[참고](https://zeddios.tistory.com/43)]



![R1280x0](https://user-images.githubusercontent.com/62657991/107321000-27a34a80-6ae5-11eb-94ae-24cd61223102.jpeg)





- viewDidLoad(): 뷰의 컨트롤러가 메모리에 로드되고 난 후에 호출

- viewWillAppear() : view가 나타나기 전에 호출
  - viewDidLoad와 차이점은 두번째 뷰로 갔다가 첫번째 뷰로 가면 viewDidLoad는 호출이 안되고 viewWillAppear가 호출 된다
  - 이는 stack 구조처럼 view가 push했다가 pop하면 이전 view는 이미 메모리에 있으므로 viewDidLoad()는 호출이 안된다

- viewDidAppear(): 뷰가 나타난 후 호출
- viewWillDisappear(): 뷰가 사라지기 직전 호출
- viewDidDisappear(): 뷰가 사라지고 호출





#### 새로 배운 것들

- `override var shouldAutorotate: Bool` : 개별 view에 대해 자동회전해야 하는지 여부

- `override var supportedInterfaceOrientations: UIInterfaceOrientationMask` : `shouldAutorotate` 가 `true` 일때만 불리게 된다.

  - ```swift
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.portrait, .portraitUpsideDown]
    ```

  - portrait: 세로 인터페이스 방향
  - landscapeLeft: 가로 방향 
  - landscapeRight: 가로 오른쪽 방향
  - portraitUpsideDown: 거꾸로 된 세로 인터페이스 방향
  - [참고](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask)

- `preferredInterfaceOrientationForPresentation` : ViewController가 나타날 때 지원되는 방향 중 한가지 방향을 설정할 수 있다 해당 메소드는 FullScreen으로 보여질 때 호출이 되는 함수라 NavigationController나 TabbarController에서 ViewController를 표시할 때는 호출되지 않는다



#### viewcontroller next view programmatically

```swift
@IBAction func clickNextButton(_ sender: UIButton) {
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let newViewController = storyBoard.instantiateViewController(withIdentifier: "third") as? ThirdViewController
    self.present(newViewController!, animated: true, completion: nil)
}
```

~~발음이 어렵다 프로그래메티컬리~~