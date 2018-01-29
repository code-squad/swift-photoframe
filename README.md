# Jack's PhotoFrame

## Step1. 시작하기 (Tabbed App 템플릿)
  - 요구사항 : 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.
  - 실행화면
    ![screensh_step1](./img/Step1.png)

  - 애플 UIKit View Management 클래스 중에서 UITabBarController 와 UITabBar에 대해 학습한다.
    - 각 클래스 역할(및 UITabBar과 UITabBarController의 차이점)은 무엇인가?
      - UITabBarController : Tab에 대한 Action을 담당(즉, 무엇을 보여주고, 무엇을 할지)
      - UITabBar : Tab의 전체적인 View구조를 담당(보여지는 부분, 즉. 어떻게 보이고 어떻게 반응할것인지)

## Step2. IBOutlet
  - First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.
  - 실행화면
    ![screemsh_step2](./img/Step2.png)

  - UILabel 클래스 속성(Property)는 어떤게 있는지 학습한다.
    - Attributes Inspector 활용

## Step3. IBAction
  - Main.storyboard 에서 First Scene에 UIButton을 추가하고, IBAction으로 연결한다.
  - 실행화면
  ![screemsh_step3](./img/Step3.png)

  - IBAction 과 IBOutlet 연결 구조에 대해 이해한 내용을 정리한다.
    - IBOutlet : 연결통로라는 의미, 인터페이스빌더에서 프로그램과의 연결통로
    - IBAction : 조작과 메서드를 연결, 사용자가 부품을 조작했을 때 실행할 일을 지정

  - 버튼에 IBAction을 추가할 때 이벤트(Event) 종류에는 어떤 것들이 있는지 학습한다.
  ![screemsh_step3_2](./img/Step3_2.png

## Step4. Scene과 Segue
  - 스토리보드 구성 요소에 대해 학습하고 새로운 Scene과 Segue(화면전환)를 추가한다.
  - 실행화면
    ![screemsh_step4_1](./img/Step4_1.png)
    ![screemsh_step4_2](./img/Step4_2.png)
    ![screemsh_step4_3](./img/Step4_3.png)

  - Segue에 액션에 있는 여러 항목들은 어떤 효과가 있는지 값을 바꿔보며 실행해서 학습한다.
    - Segue의 종류
      1. show : 새화면으로 이동. 스택구조로 원래 화면위를 덮는다.
      2. show detail : split view구조에서 원래 화면을 Master, 새 화면을 Detail로 표시한다. (교체) 아이패드에서만 의미가 있다.
      3. present modally : 새 화면이 모달처럼 원래 화면 위를 덮는다.(기존 화면은 새화면 뒤에 그대로 존재한다.)
      4. popover presentation : 팝업창을 띄움. 아이패드에만 의미가 있다.
      5. custom
