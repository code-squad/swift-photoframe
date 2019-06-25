STEP 11-5

# storyboard  학습내용 정리

- xcode의 storyboard는 view Controller를 좀 더 직관적인 GUI 화면에서 다룰 수 있다.
- 기존의 nib, xib를 대부분 대체할 수 있다. 
- 내부적으로 Interface Builder에 의해 수행된다. 
  - IB에 의해 빌드시, 스토리보드와 뷰 컨트롤러를 xml로 자동으로 매핑하여 생성하는 듯 하다.
- 스토리보드도 결국 쪼개서 작업을 해야 한다.



### 번들(리소스파일, nib files)에서 특정 스토리보드 파일을 불러오는 경우

[공식문서](https://developer.apple.com/documentation/uikit/uistoryboard/1616216-storyboardwithname?language=objc)

```swift
/*
(UIStoryboard *)storyboardWithName:(NSString *)name bundle:(NSBundle *)storyboardBundleOrNil

1) Parameters
 - name
	The name of the storyboard resource file without the filename extension. This method raises an exception if this parameter is nil.

 - storyboardBundleOrNil
	The bundle containing the storyboard file and its related resources. If you specify nil, this method looks in the main bundle of the current application.

2) Return Value
	A storyboard object for the specified file. 
*/

  
//ex)
/// Objective-C
// 1. 스토리보드 파일 불러오기
UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:[NSBundle mainBundle]]; 
 // 2. 로드된 스토리보드 객체에서 시작 지점의 뷰 컨트롤러 객체 만들기
UIViewController *myViewController = [storyboard instantiateViewControllerWithIdentifier:@"introViewController"];

//swift 
// 1. 스토리보드 파일 불러오기
let storyboard = UIStoryboard(name : "Main", bundle: nil)
// 2. 로드된 스토리보드 객체에서 시작 지점의 뷰 컨트롤러 객체 만들기
let myHomeViewController = storyboard.instantiateInitialViewController(withIdentifier: "HomeViewController")

```

### 스토리보드 객체에서 시작 지점의 뷰 컨트롤러 객체 만들기

- (__kindofUIViewController *) instantiate**InitialViewController**

  메서드 활용방법은 위의 예제코드를 참고한다.



### 스토리보드 객체에서 특정 이름의 뷰 컨트롤러 객체 만들기

(__kindofUIViewController *) instantiate**ViewControllerWithIdentifier**:
(NSString *)identifier 

[예제 코드 출처](https://medium.com/swift-programming/uistoryboard-safer-with-enums-protocol-extensions-and-generics-7aad3883b44d)

- 코드 출처에서 거론한 것처럼, 예제코드 자체는 좋은 방식의 코드 패턴은 아니나, 사용예를 들기 위한 코드로 보면 되겠다.

```swift
let name = "News"
let storyboard = UIStoryboard(name: name, bundle: nil)
let identifier = "ArticleViewController"
let viewController =  storyboard.instantiateViewController(withIdentifier: identifier) 
        as! ArticleViewController
```



----



[스토리보드 어떻게 깔끔하게 사용할까?](https://brunch.co.kr/@joonwonlee/5)

[A Better Way to Deal with Storyboards](https://medium.com/@stasost/xcode-a-better-way-to-deal-with-storyboards-8b6a8b504c06)

1) 스토리보드를 용도와 역할에 따라 나눠서 사용한다.

- 스토리보드 Wrapper를 사용하거나
- 스토리보드를 Code로 연결하여 사용한다.

2) [ 네이밍 규칙 ] 뷰 컨트롤러 이름과 스토리보드 이름을 같게 설정한다.

3) 뷰 컨트롤러에서 스토리보드를 이니셜라이징한다.

- 스토리보드를 생성하고, 이를 기반으로 뷰 컨트롤러를 만들지 않는다. 
  - **why**? 스토리보드명에 대한 하드코딩과 뷰 컨트롤러에 스토리보드에 대한 ID도 필요하고 번거롭다.

- 개선방향 
  - 스토리보드를 뷰 컨트롤러의 **static method를 사용하여 뷰컨트롤러와 함께 생성**한다.
  - 스토리보드의 아이디를 **뷰 컨트롤러 클래스 이름을 기반으로 생성하는 메서드를 작성**한다.

4) 스토리보드의 세그웨이 관련 메소드를 오버라이딩 하지 않는다. 

- 각 세그웨이마다 이름을 부여해야하고, 이러한 방식은 에러를 유발할 수 있다.
- 개선 예 : Button 클릭으로 다음 뷰컨트롤러로 이동한다면, 단순히 IBAction을 걸고, IBAction 메서드 내에서 해당 뷰 컨트롤러의 이니셜라이즈 작업을 수행한다.





## 참고자료

[Storyboard 분리하기](https://baked-corn.tistory.com/40)

[스토리보드 분리하기](http://devstory.ibksplatform.com/2017/08/ios.html)

