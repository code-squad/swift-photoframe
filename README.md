## 초기화면

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73740629-dc48b480-478b-11ea-9c02-963d75d6fbde.png">

## 다음 버튼 누른 후

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73740632-df43a500-478b-11ea-8f32-ac50843e6595.png">



## 다음 버튼 누른 후

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73740635-e10d6880-478b-11ea-890b-e20cbc35beda.png">



## 닫기 버튼 누른 후

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73740641-e36fc280-478b-11ea-986b-9151f900f808.png">

## 닫기 버튼 누른 후

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73740646-e5d21c80-478b-11ea-8d24-3c63e41b48fd.png">

### 변경 사항

* viewController 클래스를 생성해서 scene과 바인딩 함.
* 각 신의 라이프 사이클마다 print(**#file**, **#line**, **#function**, **#column**) 코드 삽입하여 등장 시기 파악
* yellow 에서 blue 로 화면 전환 시 segue를 이용하지 않고 yellow에 연결된 viewController 클래스에서 스토리 보드에 접근하여 blue에 해당하는 viewController 객체로 직접 전환

### 뷰 컨트롤러

view를 제어하는 controller 객체. view의 프로퍼티를 가지고있으면서 사용자의 이벤트에 따라 적절히 프로퍼티를 조작함.

### 라이프 사이클

* init
  * 지정된 번들의 nib 파일을 사용하여 새로 초기화 된 뷰 컨트롤러를 반환
  * nib 파일 : 인터페이스 빌더에서 생성한 객체들을 직렬화하여 저장하는 파일로, UI를 구성하는 객체들을 저장

* loadView
  * controller가 관리하는 view를 생성함
* viewDidLoad
  * controller의 view가 메모리에 로드된 후에 호출 됨
* viewWillAppear
  * view controller에 view가 추가될 것임을 알림 (보여지기 직전에)
* viewDidAppear
  * view controller에 view가 추가되었음을 알림(보여지고 난 후)
* viewWillDisappear
  * view controller에 view 제거될 것임을 알림
* viewDidDisappear
  * view controller에 view가 제거 되었음을 알림
* viewDidUnload
  * controller의 view가 메모리에서 언로드 되었음을 알림

### 화면 전환 시 라이프 사이클의 변화

* Scene A 에서 Scene B로 이동할 때
  1. viewDidLoad() - A
  2. viewWillAppear() - A
  3. viewDidAppear() - A
  4. viewWillDisappear() - A
  5. viewDidLoad() - B
  6. viewWillAppear() - B
  7. viewDidAppear() - B
* Scene B를 종료하고 Scene A로 이동할 때
  1. viewWillDisappear() - B
  2. viewWillAppear() - A
  3. viewDidDisappear() - B
  4. viewDidAppear() -A

### 완료 시간

2020-02-04-20:40