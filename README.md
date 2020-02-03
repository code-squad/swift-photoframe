# STEP1. 사진액자 앱

코드스쿼드 마스터즈 iOS 클래스 PhotoFrame 프로젝트

## STEP1-1 Tabbed App 프로젝트 생성

* Tabbed App 템플릿으로 프로젝트 생성
* `viewDidLoad` 함수에 코드 추가하여 호출 확인
    * `viewDidLoad`는 화면이 처음 보일 때 뷰가 메모리에 로드되며 호출된다.

## STEP1-2 Photo Labels 셋업

* 첫 번째 화면의 레이블들을 IBOutlet으로 ViewController와 연결
* 아웃렛 변수를 통해 레이블 설정
    * 시스템 폰트, 텍스트 색상 등 변경
        * bold 서체를 반환하는 `boldSystemFont(ofSize:)` 타입 메서드를 통해 폰트 설정
    * 그림자 색상과 offset 설정
        * `shadowOffset` 프로퍼티는 `CGSize` 타입이므로 해당 타입으로 생성하여 할당

**실행 화면**
![step1-2_result](step1-2_result.png)

## STEP1-3 버튼을 눌러서 레이블 프로퍼티 변경

* IBAction으로 버튼에 일어나는 Touch up 이벤트와 메서드를 연결
    * Touch up 이벤트 외에도, Touch down, Touch Drag 등의 이벤트들이 있다.

* 스토리보드의 Connection Inspector를 이용하여 다음과 같이 하나의 이벤트에 여러 액션 메서드들을 연결할 수 있다.
![step1-3_multiple_actions](step1-3_multiple_actions.png)

* 여러 개의 버튼을 하나의 액션에 연결할 수도 있다.
![step1-3_multiple_buttons](step1-3_multiple_buttons.png)

* 또한 다음과 같이 여러 개의 이벤트를 하나의 버튼에 연결할 수도 있다.
![step1-3_multiple_actions](step1-3_multiple_events.png)

**실행 화면**
![step1-3_result](step1-3_result.png)
