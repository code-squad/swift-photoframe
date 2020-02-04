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
