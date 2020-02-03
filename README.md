## <img width="535" alt="image" src="https://user-images.githubusercontent.com/37682858/73645043-df737000-46b9-11ea-8aa7-fa727fd04f98.png">

### 변경 사항

firstScene의 라벨을 IBOutlet으로 연결하여 값 변경.

```swift
self.firstLabel.text="Olaf의 사진액자" // 라벨의 텍스트 변경
self.firstLabel.alpha=0.5 // 라벨의 투명도 조정
self.firstLabel.backgroundColor=UIColor(displayP3Red: 0.5, green: 0.3, blue: 0.7, alpha: 0.3) // 라벨의 배경 색 변경
self.firstLabel.textColor=UIColor(displayP3Red: 0.0, green: 0.3, blue: 0.5, alpha: 1) // 라벨의 텍스트 색깔 변경
self.firstLabel.font=UIFont.systemFont(ofSize: CGFloat(50)) // 라벨의 텍스트 크기 변경
```



### 완료 시간

2020-02-03-19:23