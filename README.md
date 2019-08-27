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


2. IBOutlet
---
property의 속성 (strong, weak, copy)의 사용 경우
1. strong의 사용 경우 
: 정의를 할 때에 중요하다고 참조를 보장해야 할 경우 또는 IB에서 IBOutlet을 연결하는 경우(컨트롤변수, IBOutlet) 메인뷰는 strong을 기본적으로 잡아준다.
2. weak를 사용하는 경우
: 보통 delegate를 사용할 때 weak로 지정한다. weak로 사용하는 이유는 이미 참조하고 있을지도 모르는 델리게이트를 실수로 참조 유지하는 일이 없게 하기 위해서이다.
3. copy를 사용하는 경우 
: 테이블 뷰에서 셀을 하위 뷰로 잡아서 사용하는 경우, 값을 <b>안정적으로 보관해서 받을 때</b>, NSString이나 NSDictionary처럼 값 기반의 클래스를 다룰 때 사용한다.
수정할 문자열인 가능성이 있을 때에 모든 NSString에 대해 copy를 호출하면 항상 수정할 수 없는 복사본이 반환된다.  
수정할 수 없는 문자열 인스턴스에 대해 copy 메세지를 보내면 실제로 복사하여 일어나는 것이 아니라 참조 카운트를 증가시킨 후 같은 문자열 객체를 반환한다.
