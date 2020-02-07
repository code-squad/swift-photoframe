# Tabbed 앱

  
### 프로젝트 생성하기

- _Xcode -> File -> New -> Project -> iOS -> Tabbed App_


### 프로그래밍 요구사항
- PhotoFrame 디렉토리 -> FirstViewController.swift -> FirstViewController 클래스 -> viewDidLoad() 함수

- print(**#file**, **#line**, **#function**, **#column**) 추가

<img width="465" src="https://user-images.githubusercontent.com/34564706/73716559-accd8400-475a-11ea-8109-5250679592cb.png">


### IBOutlet
- First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결


### IBAction
- 객체 라이브러리 여는 법
> Command + Shift + l


<img width="794" alt="스크린샷 2020-02-05 오후 5 40 25" src="https://user-images.githubusercontent.com/34564706/73826640-81719480-4841-11ea-8a90-d004b901d59a.png">


### Scene과 Segue
- 새로운 Scene을 추가하는 법
>Xcode 의 오른쪽 위 '+' 버튼(라이브러리)을 누른 뒤 팝업된 창에 ViewController 타이핑 해서 선택하면 새 Scene이 추가됨


### ViewController 프로그래밍
- 뷰 컨트롤러 강의 자료에 있는 화면 관련 콜백 함수들에 모두 print(#file, #line, #function, #column) 코드를 추가한다.
이 문제는 각 뷰 컨트롤러에 콜백함수들을 직접 넣어줘야 됨
~~~
override func 함수이름(_ animated: Bool) {
        print("Scene이름 함수이름", #file, #line, #function, #column)
    }
~~~