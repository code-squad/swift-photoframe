## 버튼 누르기 전

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73662039-79e5aa80-46de-11ea-907d-a380ca2ebf6f.png">

## 버튼 누른 후

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73662054-7eaa5e80-46de-11ea-95c7-9018cac74324.png">

### 변경 사항

* IBAction을 통해 특정 이벤트 발생 시 취할 action을 정의 함.
* 하나의 버튼에 두개의 action을 부여 함.

```swift
@IBAction func nextButtonTouched(_ sender: Any) {
  self.firstLabel.textColor=UIColor.blue
  self.firstLabel.backgroundColor=UIColor.yellow
}
    
@IBAction func secondEventBtn(_ sender: Any) {
  self.firstLabel.alpha=0.5
}
```



### IBAction, IBOutlet

* IBAction
  * Event가 일어난 경우 호출되는 Action을 정의 해둔 것
* IBOutlet
  * storyboard에 정의된 컴포넌트에 접근하기 위한 변수
* 즉 IBAction을 통해 객체의 이벤트를 연결하고, 이 발생한 이벤트에서 IBOutlet을 통해 객체의 속성을 제어한다.

```
IB?
Interface Builder의 약자.
이 어노테이션이 붙은 프로퍼티나 메소드는 처음에 앱이 빌드될 때 컴파일러가 체크하고 연결 정보를 찾아 인터페이스 빌더의 객체와 서로 연결해 준다.
```



### 완료 시간

2020-02-03-22:16