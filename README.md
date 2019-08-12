# Ogi's PhotoFrame App
---

1. Tabbed App 템플릿
--
Tabbed App에서 자동 생성된 두개의 ViewController 클래스에 추가한 내용입니다.

```viewDidLoad()```: ```UIViewController```의 인스턴스 메소드로, 해당 컨트롤러의 뷰가 메모리에 로드된 이후 호출되는 메소드이다.

```#file```: 현재 코드가 실행중인 파일 이름 <br>
```#line```: 현재 코드가 실행되고 있는 줄 위치 <br>
```#function```: 현재 코드를 실행하고 있는 함수의 이름 <br>
```#column```: 현재 코드가 실행되고 있는 줄에서의 칸 위치<br>

즉  ```print(#file, #line, #function, #column)```은 해당 컨트롤러의 뷰가 메모리에 로드되는 파일의 이름과 줄, 함수와 칸에 대해 알려주는 <b>'디버깅 식별자'</b>이다.


