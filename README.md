# 사진액자 앱

## Step1-1 Tabbed App 요구사항

* 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.

![](https://i.imgur.com/4qnDKeT.png)


| Literal   | Type   | Value                                           |
| --------- | ------ | ----------------------------------------------- |
| #file     | String | The name of the file in which it appears        |
| #line     | Int    | The line number on which it appears            |
| #function | String | The name of the declaration in which it appears |
| #column   | Int    | The column number in which it begins            |

----------

###  UITabBarViewController & UITabBarView
* UITabBarController
    > "A container view controller that manages a radio-style selection interface, where the selection determines which child view controller to display."
    
    : UITabBarController의 주요 역할은 radio-style selection interface를 관리하는 것이다.
    
    radio-style이란 우리가 여러가지 선택할 수 있는 보기가 있을 때 보기 중 하나만 선택할 수 있는 경우에 사용하는 방식이라고 한다. 간단히 말해, 여러 하위 ViewController를 포함하고 있는 Container지만 선택권을 사용자들에게 넘겨 사용자들이 원하는 한가지 하위 View를 보여주는 방식으로 볼 수 있다.
    
    TabBarController는 UIViewController를 상속받기 때문에 컨트롤러 자체가 내부 뷰 속성에 접근할 수 있는 하나의 뷰를 가지고 있다. 따라서 TabBarItem을 품고있는 TabBar라는 뷰를 품고 있기 때문에 각 탭별로 화면전환이 가능한 것이다. 아래 그림은 TabBarController가 어떤식으로 구성되어 있는지 잘 보여준다.

    ![](https://i.imgur.com/SZ62vL5.png)


    View에 Layer가 있어서 구분되며, Tab Bar View를 통해 선택하고자하는 TabBarItem을 Tab하게 되면 위에서 여러 겹쳐져 있는 화면 중에 오직 가장 최상단에 올라와 있는 Custom View부분이 변경되면서 현재 어떤 Tab이 선택되었는지를 나타낸다.


* UITabBar 
    > A control that displays one or more buttons in a tab bar for selecting between different subtasks, views, or modes in an app.
    
    : UITabBar는 앱의 다른 하위 작업,보기 또는 모드 중에서 선택할 수 있도록 하나 이상의 버튼을 탭 표시 줄에 표시하는 컨트롤이다.
    
    위의 그림에서 확인되는 Tab Bar View에 해당하는 부분으로 UIView를 상속받고 있으므로, 사용자에게 탭들을 어떻게 보여주고 탭 클릭 시 어떻게 반응할 건지 (피드백을 어떻게 보여줄지)를 알고 있다. 즉, 각각의 탭들은 터치했을 때 그에 연결된 화면으로 이동할 수 있게 된다.
    
    보통 UITabBarController와 함께 사용하지만 혼자 쓰일 수도 있다. 위에서 말했듯 탭 표시 줄에 각 탭을 구분하는 버튼을 포함하고 있는데, 각각의 버튼은 탭의 종류를 뜻하며 item이라고 한다. TabBarItem은 TabBar에 최소 1개 이상 배치되어야 한다. 

완료시간 : 20.2.4 10:13

## Step1-2 IBOutlet 요구사항
* Xcode 프로젝트 내비게이터에서 Main.storyboard 파일을 선택하고 First Scene 에 있는 'First View' 레이블(Label)을 선택하고 Assistant Editor 모드로 변경한다.
* 레이블을 선택하고 Control + 드래그해서 ViewController 코드에 IBOutlet으로 연결한다.
![](https://i.imgur.com/PMovIUT.png)

완료시간 : 20.2.4 4:25

## Step1-3 IBAction 요구사항
* First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.
* 연결한 액션에 대한 메서드를 구현한다.
* 실행하고 버튼을 터치하기 이전/이후 화면을 캡처해서 readme.md 파일에 포함한다.



|            버튼 누르기 전            |             버튼 누른 후             |
|:------------------------------------:|:------------------------------------:|
| ![](https://i.imgur.com/KKER2ZH.png) | ![](https://i.imgur.com/tzd4QpT.png) |

완료시간 : 20.2.4 17:11

### Step1-4 Scene과 Segue 요구사항
* 스토리보드 구성 요소에 대해 학습하고 새로운 Scene과 Segue를 추가한다.
* 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.


|             첫 번째 화면             |             두 번째 화면             |             세 번째 화면             |
|:------------------------------------:|:------------------------------------:|:------------------------------------:|
| ![](https://i.imgur.com/QsICwNc.png) | ![](https://i.imgur.com/Oslpe8y.png) | ![](https://i.imgur.com/6Ctvv9W.png) |

완료시간 : 20.2.4 17:50

### step1-5 ViewController 프로그래밍 

* 프로젝트에 새로운 ViewController 클래스를 추가한다.
* 스토리보드 구성 요소와 클래스 코드와 연결해서 동작을 확장한다.
* 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.
* 화면 전환이 이루어지는 시점에 뷰컨트롤러 라이프사이클이 어떻게 변화하는지 print함수를 이용해 알아본다.
* Segue를 제거하고 다음 화면을 보여줄 때 코드로 보여주는 방법을 찾아보고 적용해본다.

**< [닫기] 버튼을 눌렀을 때 차례로 보여지는 화면(마지막 Scene에서부터 시작) >**

|첫 번째 화면|두 번째 화면|세 번째 화면|
|:-------------:| :--------------------: | :--------------------: |
| ![](https://i.imgur.com/2cC2qc1.png) | ![](https://i.imgur.com/FqLCy9J.png) | ![](https://i.imgur.com/KB0ayxC.png)|

---
#### View의 Lifecycle

![](https://i.imgur.com/uqa1I62.png)

* **viewDidLoad()**

    
    : 뷰의 로딩이 완료 되었을 때 시스템에 의해 자동으로 호출되기 때문에 일반적으로 리소스를 초기화하거나 초기 화면을 구성하는 용도로 주로 사용한다. 화면이 처음 만들어질 때 한 번만 실행되므로, 처음 한 번만 실행해야 하는 초기화 코드가 있을 경우 이 메소드 내부에 작성한다. 
    
* **viewWillAppear()**
    
    
    : 뷰가 이제 나타날 거라는 신호를 뷰컨트롤러에게 알리는 역할을 한다. 즉, 뷰가 나타나기 직전에 호출된다고 볼 수 있다. 앱의 초기화 작업은 viewDidLoad에서 해도 되겠지만, 다른뷰에서 갔다가 다시 돌아오는 상황에 해주고 싶은 처리가 있다면 viewWillAppear 내부에 작성한다.

* **viewDidAppear()**


    : 뷰가 나타났다는 것을 뷰컨트롤러에 알리는 역할을 한다. 또한 화면에 적용될 애니메이션을 그려준다. 즉, 뷰가 화면에 나타난 직후에 실행된다고 볼 수 있다.

* **viewWillDisappear()**


    : 뷰가 사라지기 직전에 호출되는 함수로, 뷰가 삭제 되려고하는 것을 뷰컨트롤러에 알리는 역할을 한다.

* **viewDidDisappear()**
  
  
    : 뷰가 사라진 후 호출되는 함수로, 뷰컨트롤러에 뷰가 제거되었음을 알려주는 역할을 한다. 


|처음 앱을 실행했을 때 호출되는 함수 순서| ![](https://i.imgur.com/327XeW9.png) |
| ---------------------------------------- | ------------------------------------ |
|[다음] 버튼을 누르고 두 번째 Scene이 나타났을 때 호출되는 함수 순서|![](https://i.imgur.com/Rxb2nEg.png)|
|[다음] 버튼을 누르고 세 번째 Scene이 나타났을 때 호출되는 함수 순서|![](https://i.imgur.com/fTuAcoL.png)|
|[닫기] 버튼을 누르고 두 번째 Scene으로 되돌아 가기 위해 세 번째 Scene이 사라지면서 호출되는 함수 순서|![](https://i.imgur.com/E1MMknD.png)|
|[닫기] 버튼을 누르고 첫 번째 Scene으로 되돌아 가기 위해 두 번째 Scene이 사라지면서 호출되는 함수 순서|![](https://i.imgur.com/k9pmRYv.png)|

완료 : 20.2.4 23:00

### step1-6 Container ViewController 요구사항
* 내비게이션 컨트롤러(Navigation Controller)를 Embed 시켜서 동작하도록 개선한다.
* 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.


|                                               출력 함수                                               |              실행 사진               |
|:-----------------------------------------------------------------------------------------------------:|:------------------------------------:|
|                              처음 앱을 실행시켰을 때 호출되는 함수 순서                               | ![](https://i.imgur.com/YetQrwq.png) |
|                  [다음] 버튼을 누르고 두 번째 Scene이 나타났을 때 호출되는 함수 순서                  | ![](https://i.imgur.com/YacRY9I.png) |
| [닫기] 버튼을 누르고 첫 번째 Scene으로 되돌아 가기 위해 두 번째 Scene이 사라지면서 호출되는 함수 순서 | ![](https://i.imgur.com/abOqj3i.png) |

완료 : 20.2.5 17:00

### Step1-7 Second Scene 화면 프로그래밍 요구사항
* 탭바의 두 번째 화면 (Second Scene) 디자인을 변경하고 액자 앱을 동작을 구현한다.
* 앱에 포함할 사진 리소스를 이미지 다운로드 링크에서 다운로드한다. 압축을 풀고 이미지 파일들을 Xcode 프로젝트로 드래그해서 추가한다.
* [다음]버튼에 연결된 nextImageButtonTouched에서는 01부터 22까지 랜덤으로 숫자를 선택해서 해당하는 이미지 파일을 photoImageView에 표시한다. 이미지뷰에 표시하는 방법은 다음과 같다.
* 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

| Second Scene 첫 화면 |[다음] 버튼 눌렀을 때|[다음]버튼 눌렀을 때|
| :--------: | :--------: | :--------: |
|![](https://i.imgur.com/jB5TBmS.png)|![](https://i.imgur.com/Uhr7nRd.png)|![](https://i.imgur.com/L7Y2WZY.png)|

완료 : 20.2.5 21:46
