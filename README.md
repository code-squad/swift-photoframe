

# Photoframe-step6 - Container ViewController



- navigationController를 Embed하고 닫기 버튼에 연결된 코드 수정





#### Container ViewController

Container ViewController는 viewController와 viewController 사이의 연결관계를 보다 효율적인 수단으로 제공하기 위해 존재합니다. 

Container ViewController에 해당하는 대표적인 viewController는 

- NavigationController
- TabBarController
- SplitViewController
- PageViewController

가 있습니다.



#### Navigation Controller

Navigation Controller는 hierarchical data managed를 표방합니다.

또한 Navigation Controller는 Navigation Stack이라는 배열을 사용해 view들을 관리합니다

각각의 view는 안으로 들어갈수록 겹겹이 쌓인 모양을 하고 있으며 모두 pop하고(뒤로가기) 마지막으로 남은 root view는 제거가 되지 않습니다.



완료 시간 02/09 21:40





![스크린샷 2021-02-09 오후 9 34 22](https://user-images.githubusercontent.com/62657991/107364366-b3859880-6b1e-11eb-8279-bf0d1e50c7d1.png)
![스크린샷 2021-02-09 오후 9 34 55](https://user-images.githubusercontent.com/62657991/107364388-b84a4c80-6b1e-11eb-8b7f-6ce49492c69f.png)