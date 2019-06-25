# Step1 - UITabBarController, UITabBar (2019.6.25)

## View Controllers

- View Controllers는 **단일 루트 뷰를 관리**하며, 그 자체에는 임의의 개수의 하위 뷰가 포함될 수 있다.
- 해당 뷰 계층과의 사용자 상호 작용은 필요에 따라 앱의 다른 개체와 조정되는 View Controllers에 의해 처리 된다.
- 모든 앱에는 콘텐츠가 메인 창을 채우는 **View Controllers가 하나 이상 있다.(무조건)**
- 앱이 한 번에 화면에 들어갈 수 있는 것보다 더 많은 콘텐츠를 가지고 있는 경우 **multiple View Controllers**를 사용하여 해당 콘텐츠의 다른 부분을 관리한다.

## UIKit

- 특정 유형의 콘텐츠 탐색 및 관리를 위한 몇 가지 표준 View Controllers 제공한다.
- 앱의 사용자 지정 콘텐츠를 포함하는 View Controller를 정의할 수 있다.
- 새로운 탐색 체계를 구현하기 위해 사용자 정의 Container View Controller를 정의할 수 있다.

## UITabBarController와 UITabBar

- 앱을 개발할 때 흔히 쓰이는 View Controller 중 Tab은 아래와 같이 Tab에 있는 콘텐츠를 선택함으로써 다른 화면을 보여줄 수 있다.
- 이 처럼 같은 앱이지만 다루고 싶은 콘텐츠가 화면마다 확연히 다른 경우 또는 같은 콘텐츠지만 인터페이스이스가 다른 경우는 Tab 방식을 활용하는 것이 좋다.

![UITab](images/UITab.png)

- Tab Bar Controller의 Tab bar 보기에 직접 엑세스하면 안 된다. Tab 표시줄 Controller 의 Tab을 구성하려면 각 tab에 대한 root view를 제공하는 View Controller **(UIViewController)를 상속** 받아야한다.
- Tab Bar 항목은 해당 View Controller를 통해 구성된다. Tab Bar 항목을 View Controller와 연결하려면 UITabBarItem 클래스의 새 인스턴스를 생성하고 View Controller에 맞게 구성한 다음 **View Controller의 Tab Bar에 할당**한다.
- 아이템 속성, View Controller에 사용자 정의 Tab 표시줄 항목을 제공하지 않는 경우 View Controller는 제목 속성에서 이미지와 텍스트를 포함하지 않는 기본 항목을 생성한다.
- Tab Bar 인터페이스와 상호 작용할 때 Tab Bar Controller 객체는 상호 작용에 대한 책임을 넘긴다. 책임을 넘겨 받은 객체는 **UITabBarContrrollerDelegate 프로토콜을 준수**해야 한다.

### UITabBarController

- UITabBarController 클래스는 **UIViewController 클래스에서 상속**되기 때문에, Controller 자체가 내부 View 속성에 접근할 수 있는 하나의 View를 가진다.
- TabBarItem을 품고 있는 TabBar 라는 View를 품고 있기에 각 Tab 별로 화면 전환이 가능하다.
- 여러 하위 View Controller를 포함하고 있는 Container지만 선택권을 사용자들에게 넘겨 사용자들이 원하는 한가지 하위 View만을 보여주는 방식
- UITabBarController를 사용한다면 Tab이 항상 화면 최하위에 위치 한다.

아래 그림은 View가 전체 Tab Bar 인터페이스를 나타내기 위해 어떻게 조립되는지 보여준다.

![UITabBarController_example](images/UITabBarController_example.png)

각 View에 Layer가 있어서 구분되며, TabBar View를 통해 Tab을 선택한다면 위에서 여러 겹쳐져 있는 화면 중에 오직 가장 최상단에 올라와 있는 Custom View부분만 변경되면서 현재 어떤 Tab이 선택되었는지를 나타낸다.

## UITabBar

- **UIView를 상속 받음**
- Tab Bar View에 해당하는 부분이며 UIView로, 사용자에게 탭들을 어떻게 보여주고 탭 클릭 시 어떻게 반응할 건지  알고 있다.
- UITabBar는 보통 UITabBarController와 함께 사용하지만 **혼자 쓰일 수도 있으며**, 각 탭을 구분하는 버튼을 포함한다.
- 각각의 버튼은 탭의 종류를 뜻하며 item이라고 하며, **TabBarItem은 TabBar에 최소 1개 이상**이다.
- 종류가 6가지가 넘어간다면 처음 4가지만 표시되고 나머지는 the standard More item(보통 `∙∙∙`) 이라는 버튼으로 표시된다.
- TabBar의 Item들을 구성할때는 Interface Builder(Storyboard)를 활용하는 방식과 프로그래밍으로 직접 처리하는 방식 두가지가 있다.

|         속성         |                             내용                             |
| :------------------: | :----------------------------------------------------------: |
|    **Background**    | Bar에 표시할 배경 이미지. 확장 가능한 이미지를 지정하면 사용 가능한 공간에 맞게 영상이 확장되고 그렇지 않으면 이미지가 타일링된다. 배경 이미지를 구성할 때 탭 표시줄은 색조 정보를 무시한다. 이 속성을 프로그래밍 방식으로 설정하려면 **backageImage** 속성을 사용하면된다. |
|      **Shadow**      | Tab 표시줄의 사용자 정의 Shadow 이미지. Tab 표시줄에 사용자 지정 배경 이미지가 없을 경우 이 특성은 무시된다. 이 속성을 프로그래밍 방식으로 설정하려면 **shadowImage** 속성을 사용하면된다. |
|    **Selection**     | 선택한 Tab에 사용할 이미지. 이 특성을 프로그래밍 방식으로 설정하려면**IndicatorImage** 속성을 사용하면된다. |
|    **Image Tint**    | 선택한 항목에 적용할 틴트 색상. 이 특성을 프로그래밍 방식으로 설정하려면 **tintColor** 속성을 사용하면된다. |
|      **Style**       | Bar에 적용할 기본 스타일. 어둡거나 밝은 스타일로 Tab Bar를 구성할 수 있으며 막대는 불투명하거나 반투명할 수 있다. 스타일을 프로그래밍 방식으로 설정하려면 **barStyle** 및 **isTranslucent** 속성을 사용하면된다. |
|     **Bar Tint**     | 막대에 적용할 틴트 색상. 이 특성을 프로그래밍 방식으로 설정하려면 **barTintColor** 속성을 사용하면된다. |
| **Item Positioning** | 항목에 적용할 위치. 이 특성을 사용하여 항목이 탭 막대의 길이에 걸쳐 간격을 두는 방법을 구성해야한다. 이 속성을 프로그래밍 방식으로 설정하려면 **itemPositioning** 속성을 사용하면된다. |



# Step2 - UILabel (2019.6.26)

## UILabel

: 문자열을 화면에 보여주고 싶을 때 사용하는 클래스

|             속성             | 설명                                                         |
| :--------------------------: | :----------------------------------------------------------- |
|          **alpha**           | 투명도를 설정하는 프로퍼티로 0~1 사이의 값을 가지며 0은 완전히 안 보이게, 1은 완전히 보이게 된다. |
|          **frame**           | 위치를 설정하는 프로퍼티. **CGRect** 클래스 형태로 설정      |
|     **backgroundColor**      | 배경색을 설정하는 프로퍼티. **UIColor** 클래스 형태로 설정   |
|           **text**           | 문자열의 내용을 설정하거나 바꾸고, 설정된 값을 가져올 수 있는 프로퍼티 |
|        **textColor**         | 문자열의 색깔을 바꾸고 현재 설정된 문자열의 색깔을 가져올 수 있는 프로퍼티. **UIColor** 클래스로 설정 |
|      **textAlignment**       | 문자열의 정렬 방식을 선택하는 프로퍼티. <br />- **UITextAlignmentLeft**: 문자열을 왼쪽으로 정렬 <br />- **UITextAlignmentCenter**: 문자열을 가운데로 정렬 <br />- **UITextAlignmentRight**: 문자열을 오른쪽으로 정렬 |
|           **font**           | 문자열에 적용할 폰트를 설정하고 가져올 때 사용하는 프로퍼티. **UIFont** 클래스에서 폰트의 종류와 크기를 설정해 적용할 수 있다. |
|      **numberOfLines**       | 표시할 줄의 개수를 설정하고 가져올 때 사용하는 프로퍼티. 기본값은 1 |
| **adjustFontSizetoFitWidth** | 글씨의 길이가 설정해 놓은 크기보다 커질 경우 폰트 크기를 줄일 것인지를 결정하는 프로퍼티 <br />- **Yes**: 설정해 놓은 크기보다 글씨의 길이가 길 경우 폰트 크기를 줄인다. <br />- **No**: 설정해 놓은 크기보다 글씨의 길이가 길 경우 **'…'**으로 대체 |



### UILabel의 주요 메서드

- **initWithFrame**: 초기화하는 메서드로 위치와 크기를 설정해 초기화 한다. **CGRect** 값으로 설정

## UILabel 코드작성 및 결과

![Step2_코드](images/Step2_코드.png)

![Step2_결과](images/Step2_결과.png)