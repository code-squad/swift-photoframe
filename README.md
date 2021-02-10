

# Photoframe-step6 - Container ViewController



#### Container ViewController

- Container ViewController는 viewController와 viewController 사이의 연결관계를 보다 효율적인 수단으로 제공하기 위해 존재합니다. 

- container가 생긴 이유는 `addSubview` 를 사용할 때 view가 사라지게 된다면 그 영역을 처리하는게 애매해지기 때문에도 이유가 된다

- Container ViewController에 해당하는 대표적인 viewController는 
  - NavigationController - Navigation Bar 만 보여주고 구체적인 뷰들을 쌓아주는 방식
  - TabBarController - TabBar(추가 시relationship)만 보여주고 버튼 클릭 눌렀을 때 뷰를 보여주는 방식(transition)
  - SplitViewController - iPad 설정을 예로들어 전체를 SplitViewController가 담당하고 왼쪽은 메뉴, 선택하면 오른쪽 view가 바뀌는 방식

  가 있습니다.

- window와 Controller와 한 계층씩 포함관계를 가지도록 이해하고 이에따른 Model을 구성하는 것도 연습 필요



#### Navigation Controller

- Navigation Controller는 hierarchical data managed를 표방합니다.

- 또한 Navigation Controller는 Navigation Stack이라는 배열을 사용해 view들을 관리합니다

- 각각의 view는 안으로 들어갈수록 겹겹이 쌓인 모양을 하고 있으며 모두 pop하고(뒤로가기) 마지막으로 남은 root view는 제거가 되지 않습니다.



완료 시간 02/10 14:20



![스크린샷 2021-02-09 오후 9 34 22](https://user-images.githubusercontent.com/62657991/107364366-b3859880-6b1e-11eb-8279-bf0d1e50c7d1.png)
![스크린샷 2021-02-09 오후 9 34 55](https://user-images.githubusercontent.com/62657991/107364388-b84a4c80-6b1e-11eb-8b7f-6ce49492c69f.png)