## Step1
<img width="512" alt="스크린샷 2021-02-08 오후 5 22 52" src="https://user-images.githubusercontent.com/74946802/107194730-c5d6d800-6a33-11eb-8929-8b2da8f4b031.png">

1. TabBarController를 ViewController에 추가한다.  
2.  print(#file, #line, #function, #column) 코드를 추가하여 콘솔 영역을 확인한다.
- /Users/ray/swift-photoframe/PhotoFrame/PhotoFrame/ViewController.swift 14 viewDidLoad() 40
### 기존 뷰 컨트롤러를 삭제하고 만들 경우 이니셜 뷰 컨트롤러 지정을 해도 콘솔이 출력되지 않았다. 여러번 반복 끝에 기존 뷰 컨트롤러에 TabBarController를 Embeded했더니 콘솔이 출력됐다. 탭바 item1에서 item2로 탭을 바꿔도 새로 콘솔이 출력되지는 않는데, 정상작동하는 것인지 모르겠다. (2021-02-08 17:37)
