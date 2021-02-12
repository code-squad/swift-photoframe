# Step.1

- TabBar Controller 추가 및 Initial ViewController 지정하기

- 실행화면 캡쳐

<img src="https://user-images.githubusercontent.com/74946802/107307012-45fb4d00-6ac9-11eb-8bd2-72e3289ad6a4.png" width="300" height="600">

- 콘솔창 확인
<img width="563" alt="스크린샷 2021-02-09 오전 11 21 10" src="https://user-images.githubusercontent.com/74946802/107307127-76db8200-6ac9-11eb-991e-574128be5440.png">
<img width="563" alt="스크린샷 2021-02-09 오전 11 25 57" src="https://user-images.githubusercontent.com/74946802/107307221-9ffc1280-6ac9-11eb-8276-f397672dba7c.png">
<img width="563" alt="스크린샷 2021-02-09 오전 11 25 45" src="https://user-images.githubusercontent.com/74946802/107307254-ae4a2e80-6ac9-11eb-94c5-bb3025a6cff8.png">

- UITabBarController VS UITabBar

#### UITabBarController

여러가지 선택할 수 있는 보기가 있을 때, 그 중 하나를 선택하여 사용하는 방식인 radio-style interface를 관리  

UIViewController를 상속받기 때문에 컨트롤러 자체가 내부 뷰 속성에 접근할 수 있는 하나의 뷰를 가지고 있음  

TabBarItem을 품고 있는 TabBar라는 뷰를 품고 있기에 각 탭별로 화면 전환 가능  


#### UITabBar

TabBar View에 해당하는 부분이며 UIView를 상속받아서 탭 클릭시 반응을 관리

UITabBar는 보통 UITabBarController와 함께쓰이지만, 혼자 쓰일 수도 있음

각 탭을 구분하는 버튼을 가지고 있고 각 버튼은 탭의 종류를 뜻하며 item이라고 부름

TabBarItem은 TabBar에 최소 1개 이상

# Step.2

- Label 추가하고 IBOutlet 연결

- 첫화면 꾸미기

<img src="https://user-images.githubusercontent.com/74946802/107310900-b0fc5200-6ad0-11eb-9402-1761303ded14.png" width="300" height="600">

- UILabel Property 학습하기

# Step.3

- 버튼 추가하고 코드 구현하기

<img width="551" alt="스크린샷 2021-02-09 오후 2 09 59" src="https://user-images.githubusercontent.com/74946802/107318720-bbbee300-6ae0-11eb-9869-75ede20c09ba.png">

- 실행 전/후 화면

<img src="https://user-images.githubusercontent.com/74946802/107318746-ced1b300-6ae0-11eb-9578-cc5cd4e96ee8.png" width="300" height="600">
<img src="https://user-images.githubusercontent.com/74946802/107318767-d7c28480-6ae0-11eb-9a9b-656f0c89ac82.png" width="300" height="600">

#### IBAction && IBOutlet

둘 모두 StoryBoard와의 연결고리 역할

IBAction은 Event가 일어날 경우 호출되는 Action을 정의해둔 것

IBOutlet은 값에 접근하기 위한 변수

Action은 입력이 들어왔을 때 어떤 행동을 하는지 나타냄

Outlet은 데이터를 가져오는 것

IB는 Interface Builder의 약자

@는 예약어로서 컴파일러에게 @가 붙은 명령어가 어떤 속성을 가졌는지 전하는 역할

# Step.4

- View Controller 추가하여 Button과 연결

segue연결시 iOS13부터 modalPresentation 디폴트값 변경 => fullscreen 필요시 수동 변경필요

수동 변경 조치 완료

- 배경 색상 변경 후, 작동 전/후 사진 추가

- 첫번째 화면
<img src="https://user-images.githubusercontent.com/74946802/107326543-f0399b80-6aee-11eb-829a-c00310da5910.png" width="300" height="600">

- 두번째 화면
<img src="https://user-images.githubusercontent.com/74946802/107326609-12331e00-6aef-11eb-9d50-0ee5fe609177.png" width="300" height="600">

- 세번째 화면
<img src="https://user-images.githubusercontent.com/74946802/107326639-21b26700-6aef-11eb-8830-3987e32a64e0.png" width="300" height="600">

# Step.5

- View Controller의 생명주기
<img src="https://user-images.githubusercontent.com/74946802/107330692-414c8e00-6af5-11eb-9cfa-4b525c81f16d.jpeg" width="350" height="500">

#### viewDidLoad

시스템에 의해 자동 호출

일반적으로 리소스를 초기화하거나 초기화면 구성 용도

화면이 처음 호출될 때 한번만 실행

처음 한번만 실행되는 초기화 코드의 경우 viewDidLoad에 작성

#### viewWillAppear

뷰가 나타날 거라는 신호를 컨트롤러에 알리는 역할

뷰가 나타나기 직전에 호출되며 viewDidLoad와 다름

앱 실행 시 viewDidLoad -> viewWillAppear순으로 호출

가장 큰 차이점은 다른 뷰로 이동했다가 돌아왔을 때는 viewWillAppear만 호출

다른 뷰로 이동했다가 돌아왔을 때도 처리해야하는 작업은 viewWillAppear에 작성

#### viewDidAppear

뷰가 화면에 나타났다는 신호를 컨트롤러에 알리는 역할

화면에 적용될 애니메이션을 그려주는 역할

뷰가 화면에 나타난 직후에 호출

위 내용을 제외하고는 viewWillAppear와 거의 같음

#### viewWillDisappear

뷰가 사라지기 직전에 호출

뷰가 삭제되려고 하는 것을 컨트롤러에 알리는 역할

#### viewDidDisappear

뷰 컨트롤러가 제거됐을 때 호출

- 첫번째 화면 -> 두번째 화면 -> 첫번째 화면 실행 순서

<img width="168" alt="스크린샷 2021-02-09 오후 5 10 40" src="https://user-images.githubusercontent.com/74946802/107334615-47913900-6afa-11eb-8932-8346b55ca68d.png"> <img width="168" alt="스크린샷 2021-02-09 오후 5 10 51" src="https://user-images.githubusercontent.com/74946802/107334631-4d871a00-6afa-11eb-984e-be2026567914.png"> <img width="172" alt="스크린샷 2021-02-09 오후 5 11 01" src="https://user-images.githubusercontent.com/74946802/107334657-54ae2800-6afa-11eb-88ae-135c063d5fda.png">

?? viewDidLoad가 왜 계속 실행되는지...?

<img width="219" alt="스크린샷 2021-02-10 오후 2 07 47" src="https://user-images.githubusercontent.com/74946802/107467580-a497f800-6ba9-11eb-8553-e935f2ba9cf5.png">

루트 뷰 컨트롤러를 TabBar로 사용하는 뷰컨트롤러끼리는 정상 작동

이전 무한 viewDidLoad호출은 일반 viewController끼리 Segue(show)사용해서 계속 새로운 페이지로 이동하는 현상

- Segue 삭제후 코드로 구현

# Step.6

- Navigation Controller Embeded

첫번째 뷰 컨트롤러에  Navagation VC 추가

닫기 버튼 수정(실행 후 확인결과 네비게이션 바 이전버튼과 동일하게 작동)

- 실행 콘솔화면(1st -> 2nd -> 3rd -> 2nd -> 1st)

<img width="241" alt="스크린샷 2021-02-10 오후 2 46 51" src="https://user-images.githubusercontent.com/74946802/107470717-30605300-6baf-11eb-9f13-5c51bd36a892.png">

- 네비게이션 push/pop

네비게이션 컨트롤러를 활용하여 두 화면을 반복해서 왔다갔다 할 경우 두번째 화면의 viewDidLoad는 계속 호출 됨

이는 네비게이션 컨트롤러의 작동방식이 자료구조 '스택'과 동일하다는 것을 의미

즉, 첫번째 화면을 호출하면 스택에 push되어 top이 됨

두번째 화면을 호출하면 스택에 push되어 두번째 화면이 스택의 top이 됨

이전버튼을 통해 뒤로가면 top이었던 두번째 화면이 pop되고, 첫번째 화면이 다시 top이 됨

이때, 다시 두번째화면으로 돌아가면 메모리에서 pop됐기 때문에 다시 viewDidLoad가 호출됨

- Segue를 통한 이전화면

네비게이션 컨트롤러 없이 Segue를 활용하여 이전화면과 연결하면 모든 화면에서 viewDidLoad가 반복적으로 호출됨

메모리에는 남아있지만 추가적으로 새로운 화면을 반복해서 호출하는 것으로 보임 -> 이전화면을 segue로 연결할 때는 주의가 필요

# Step.7

- 이미지 뷰 및 버튼 추가

- 다음 버튼 누를 시 랜덤으로 이미지 변경 구현 완료

- 이미지 뷰 Content Mode Aspect Fit으로 수정

- 실행화면

<img src="https://user-images.githubusercontent.com/74946802/107476744-d1540b80-6bb9-11eb-9fbf-98bb187b4415.png" width="280" height="600"> <img src="https://user-images.githubusercontent.com/74946802/107476790-eb8de980-6bb9-11eb-8a87-f6b056ebdcfd.png" width="280" height="600"> <img src="https://user-images.githubusercontent.com/74946802/107476828-fba5c900-6bb9-11eb-9a8d-8568098bb6df.png" width="280" height="600">

#### UIImage vs UIImageView

UIImage는 변하지 않는 이미지 데이터를 저장하여 나타내줌

UIImageView는 여러 UIImage를 나타낼 수 있음

UIImageView가 UIImage를 포함하고 있다고 볼 수 있음

UIImageView가 더 넓은 범위이며 연속된 사진을 나타내는 것도 가능함

공식문서에도 UIImageView는 UIImage를 활용하여 효율적으로 이미지를 가져와서 보여주는 것이 가능하다고 언급됨

# Step.8

- frame.png 추가하여 액자 구성 완료

- bringSubviewToFront활용하여 액자를 뒤로 보내기 완료

- 액자 추가 이미지
<img width="289" alt="스크린샷 2021-02-12 오전 8 05 00" src="https://user-images.githubusercontent.com/74946802/107709927-5f8ad780-6d09-11eb-9819-60cf1b5fa19e.png">

- imagePickerController 기능 구현 완료

- 실행화면

<img src="https://user-images.githubusercontent.com/74946802/107710151-cc05d680-6d09-11eb-9d00-66bee0fc8273.png" width="280" height="600"> <img src="https://user-images.githubusercontent.com/74946802/107710200-e3dd5a80-6d09-11eb-8059-1a8657eff30e.png" width="280" height="600"> <img src="https://user-images.githubusercontent.com/74946802/107710255-f35ca380-6d09-11eb-9746-8c0778471cb0.png" width="280" height="600">

#### 델리게이트와 프로토콜

프로토콜은 선언만되고 구현되지 않은 메서드

프로토콜은 특정 기능이나 속성에 대한 설계도

델리게이트는 '대리자'의 개념

즉, 하나의 객체에서 모든 일을 처리하는 것이 아니라 일부를 다른 객체에 넘기는 것

일반적으로 프로토콜은 자주쓰이는 방식이 델리게이트 패턴

프로토콜 타입으로 선언된 값을 사용한다는 것은 할당된 객체가 어떠한 기능을 갖추고 있는지 상관 없다는 뜻

단순히 객체를 사용하여 프로토콜에 정의된 프로퍼티나 메소르를 호출하겠다는 의도

iOS에서는 클래스가 단일 상속만 지원하기 때문에 이러한 프로토콜 타입의 특성을 활용하여 델리게이션을 구현

하나의 부모 클래스를 상속받고 나면 다른 클래스를 상속받을 수 없어서 기능적으로 제한

이를 해결하기 위해 구현 개수에 제한이 없는 프로토콜을 이용하여 필요한 기능단위별 객체작성
