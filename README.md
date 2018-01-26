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
