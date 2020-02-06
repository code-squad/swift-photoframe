## 

![IBOutlet](/Users/yun/Downloads/swift-photoframe/Imgaes/Screen Shot 2020-02-03 at 11.33.24.png)

![IBAction](/Users/yun/Downloads/swift-photoframe/Imgaes/Screen Shot 2020-02-03 at 11.44.59.png)

![Scene and Segue](/Users/yun/Downloads/swift-photoframe/Imgaes/Screen Shot 2020-02-03 at 11.46.04.png)

![popover](/Users/yun/Downloads/swift-photoframe/Imgaes/Screen Shot 2020-02-04 at 15.17.48.png)







UILabel 속성중에 behavior에 highlighted, enable이 있는걸 처음 알았습니다.

nsAttributedString을 사용해서 원하는 범위만큼 다른 속성으로 변경할 수 있는다는걸 알았습니다. 아직 실습은 안해봤지만 나중에 필요로할때 사용해보겠습니다.

버튼이 이벤트를 받는 형식이 노티인거같다. (공식문서에서 notify라고 표기했습니다.)

segue 타입은 4가지가 존재합니다.

## show  

stack에 뷰를 추가합니다. (push)

## show detail

아이폰은 show랑 다를게 없습니다.

아이패드에서 split view의 자식뷰를 전환할때 사용합니다.

## present

modal로 뷰를 추가합니다.

## popover

popover를 처리하기 위해서 delegate를 처리해줘야하는데 이전 화면에서 처리르 해줘야하는거 같습니다. 



# View Lifecycle

----

아래 method들은 전부 viewcontroller가 관리한다.

## loadView

### caution

- Interface builder를 사용하면 오버라이드하면 안된다. ( view를 직접 만들때 오버라이드할 수 있다. view 객체는 유니크해야된다.)
- loadView를 직접 호출하면 안된다. 
- 이 메소드를 커스텀할 경우에는 super을 호출하면 안된다. 

loadView는 viewcontroller가 관리하고, viewcontroller의 view가 nil일때 호출되며, 뷰를 생성하고 생성한 뷰를 부모뷰로 설정합니다. viewcontroller에서 nib을 사용하면 nib으로부터 view를 호출한다.



## viewDidLoad

view 계층구조가 nib으로 로드 되거나, loadView에서 호출되었는지 상관없이 호출된다.
view lifecycle동안 한번만 불리며, viewcontroller가  view hierarchy을 xib 또는 storyboard에서 로드한후에 불린다. (property는 연결이 되었지만 bounds모르기 때문에 size와 관련된 작업을 하면 위험할 수 있습니다.)



## viewWillAppear

view가 보이기전 애니메이션이 실행되기 전에 항상 불립니다. 위치는 설정되었지만, 방향은 설정하지 못한 상태입니다.



## viewWillLayoutSubViews

view bounds가 바뀔때 호출된다.
view를 subView에 배치하기전에 변경해야할 것들을 변경할 수 있다. (constriant를 변경하면 위험할 수 있다.) 
기본 구현은 아무것도 처리하지 않는다.



LayoutSubViews

#setNeedLayout #layoutIfNeeded

## viewDidLayoutSubViews 

view의 bounds가 변경되고 나서 뷰의 서브뷰의 위치를 조정하고난 후 불린다. 하위 뷰를 배치하고 뷰가 보이기 전까지의 작업을 처리한다. 오토레이아웃이 적용되기 전까지 뷰의 프레임, 바운스는 결정되지 않는다. 그래서 viewDidLoad , viewWillAppear에서 변경하면 안바뀌고 layoutsubviews에서 바꿔야 적용이 된다. (아직 이해가 완벽하지 않지만 이번 주에 마무리 하겠습니다. )

기본 구현은 아무것도 처리하지 않는다.
https://oaksong.github.io/2018/03/02/layout-subviews/



## viewDidAppear

화면 등장

override할때 부모가 이 메소드를 override할 수 있다.(무슨 상황인지 모르겠습니다.)



## viewWillDisAppear 

view가 view hierarchy에서 제거될때 호출된다. 아직은 hierarchy에 존재한다.

(viewDidAppear에서 시작된 애니메이션 같은 처리를 마무리 짖는다.)



## viewDidDisAppear

view가 view hierarchy에서 제거되고 호출한다.

## 

## ContainerViewController

다수의 viewcontroller를 단일 인터페이스로 결합하는 방식이다.

탐색이 용이하며, 기존 컨텐츠 기반으로 새로운 인터페이스를 만드는데 사용됩니다.

## UINavigationController

naviagtion이 container viewcontroller라고 생각도 못했습니다.

navigation은 각각의 viewcontroller에서 사용할 navigation bar를 설정, transition animation을 처리해줍니다.

현재의 view는 child viewcontroller의 컨텐츠를 관리하는 형식입니다.

### UISplitViewController UITabBarController

Navigation Controller가 없으면 segue type중 show(push)를 사용해도 present(modal)이랑 같은 전환 효과가 나옵니다.

Navigation Controller가 viewcontroller을 배열로 가지고 있어서 stack처럼 처리합니다. (FILO) No newline at end of file



## UIImage

UIImage 객체는 불변성이다. -> 파일 이미지를 처음 메모리에 적재하는 객체를 뜻하는거 같습니다. 

animationImage는 UIImage를 배열로 가지고 있고 startAnimating을 사용해서 보여주는거였습니다.



## UIImageView

isQpaque(Bool)에 따라서 background, aplha(0.0 ~ 1.0) 값 적용여부가 결정됩니다. 

성능상의 이유로 shadow, background를 안쓰면 isQpaque를 true 설정.

imageView도 이벤트 처리할 수 있다.

### 성능향상 

cache는 uiimageview에서 처리하는줄 몰랐습니다. 

isQpaque 꼭 확인하기. 

UIImageView 랑 UIImage랑 크기가 비슷하게 사용하기, 작거나 크면 새로운 객체를 생성해야되기 떄문입니다.

ImageView에서는 draw()를 사용하지말고, UIView에서 처리해야합니다.

