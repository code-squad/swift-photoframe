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



### 완료 시간

2020-02-03-22:16