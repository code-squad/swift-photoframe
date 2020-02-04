# Limwin PhotoFrame

<br>

## 진행사항
2020.2.3
1. Tabbed App 프로젝트 생성
2. viewDidLoad 함수에 코드 추가 및 실행
<img width="1147" alt="스크린샷 2020-02-03 오후 12 33 32" src="https://user-images.githubusercontent.com/49548908/73704162-7b8e8d00-4735-11ea-94d7-dbaa0e86512d.png">

2020.2.4
1. FirstScene의 2개의 Label을 FirstViewController로 @IBOutlet을 사용해 연결
2. 연결한 Label에 대해서 배경색상, 폰트색상, 폰트크기, 폰트굵기, 내용 수정
<img width="454" alt="스크린샷 2020-02-04 오후 3 09 04" src="https://user-images.githubusercontent.com/49548908/73718677-932f3b00-4760-11ea-8d56-5a823b3d61f6.png">

3. FirstScene에 버튼 추가 후, FirstViewController에 @IBAction을 사용해 연결
4. 연결한 액션에 대해 메서드 구현(색상 변경, label 배경색 변경, label 투명도 50% 적용)
<img width="454" alt="스크린샷 2020-02-04 오후 4 18 54" src="https://user-images.githubusercontent.com/49548908/73722890-f32adf00-476a-11ea-8eb4-978ea5556203.png">

5. 두개의 새로운 Scene을 추가 후 FirstScene에서 부터 Button에 Scene을 연결하여 Button을 누를시 해당 Scene으로 넘어감
<img width="400" height="800" src="https://user-images.githubusercontent.com/49548908/73727054-15752a80-4774-11ea-9417-68b1de5e5531.gif">

2020.2.5
1. 두개의 ViewController 클래스 추가 후 새로 추가한 2개의 Scene과 연결
2. 닫기 Button을 추가하여 터치시 현재 화면을 닫는 동작을 구현함.
<img width="400" height="800" src="https://user-images.githubusercontent.com/49548908/73760409-9f42e900-47b0-11ea-8c11-7ca2b67475ea.gif">
3. ViewController Life Cycle을 가시적으로 확인하기 위해 콜백 관련 함수 4개 구현 (print문으로 확인)
