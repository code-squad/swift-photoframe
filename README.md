# PhotoFrame



## Step-4(Scene과 Segue)

## 요구사항

- 사진액자 - IBAction 요구사항을 구현한 상태로 시작한다.
- 스토리보드 구성 요소에 대해 학습하고 새로운 Scene과 Segue를 추가한다.
- 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.



## 실행 화면

<img width="250" alt="스크린샷 2021-02-09 오후 3 26 06" src="https://user-images.githubusercontent.com/42647277/107324490-810e7800-6aeb-11eb-80ae-7f2ae2dd4592.png"><img width="250" alt="스크린샷 2021-02-09 오후 3 26 15" src="https://user-images.githubusercontent.com/42647277/107324524-908dc100-6aeb-11eb-8a70-86c356eefbae.png"><img width="250" alt="스크린샷 2021-02-09 오후 3 26 22" src="https://user-images.githubusercontent.com/42647277/107324588-ac916280-6aeb-11eb-9dc5-f1f9e8562061.png">



## 설명

FirstViewScene에서 YellowScene으로 넘어갈때 segue는 show(e.g. Push)방식으로 전환되었고 실행하였을시 아래에서 화면이 올라와 화면 위쪽 공간을 남겨둔 나머지 공간들을 채워진 모습이다.

이후 YellowScene에서 BlueScene으로 넘어갈때는 화면 전체를 채우고싶어 segue를 present modally로 하였고 presentation을 FullScreen으로 하였더니 원하는대로 나왔다. 하지만 아무 버튼도 없고 제스쳐도 사용할 수 없기에  YellowScene으로 되돌아갈 수 없었다. 따라서 Back to yellow scene 버튼을 새로 만든 후 BlueViewController를 만들어 연결한 후 self.dismiss()메소드를 통해 되돌아갈 수 있게 구현하였다.
