# Step.1

## TabBar Controller 추가 및 Initial ViewController 지정하기

## 실행화면 캡쳐

![Simulator Screen Shot - iPod touch (7th generation) - 2021-02-09 at 11 20 32](https://user-images.githubusercontent.com/74946802/107307012-45fb4d00-6ac9-11eb-8bd2-72e3289ad6a4.png)

## 콘솔창 확인
<img width="409" alt="스크린샷 2021-02-09 오전 11 21 10" src="https://user-images.githubusercontent.com/74946802/107307127-76db8200-6ac9-11eb-991e-574128be5440.png">
<img width="394" alt="스크린샷 2021-02-09 오전 11 25 57" src="https://user-images.githubusercontent.com/74946802/107307221-9ffc1280-6ac9-11eb-8276-f397672dba7c.png">
<img width="563" alt="스크린샷 2021-02-09 오전 11 25 45" src="https://user-images.githubusercontent.com/74946802/107307254-ae4a2e80-6ac9-11eb-94c5-bb3025a6cff8.png">

## UITabBarController VS UITabBar

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

## Label 추가하고 IBOutlet 연결

## 첫화면 꾸미기

![Simulator Screen Shot - iPhone 11 - 2021-02-09 at 12 15 50](https://user-images.githubusercontent.com/74946802/107310900-b0fc5200-6ad0-11eb-9402-1761303ded14.png)

## UILabel Property 학습하기
