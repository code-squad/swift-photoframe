**STEP 11-7**



# 1. UIImage

- App에서 이미지 데이터를 관리하기 위한 오브젝트이다.

```swift
class UIImage : NSObject
```

- `UIImage` 클래스는 아래에 기술된 플랫폼에 의해 지원되는 모든 이미지 포맷 데이터를 관리할 수 있습니다.
  - 다만, PNG나 JPEG 확장자 이미지 파일을 사용할 것을 권장합니다.
  - 특히 Image 객체가 사용자 인터페이스에 맞게 최적화되기때문에, 손실없는( `lossless` ) PNG 포맷이 권장됩니다.
- 이미지 객체(image object)는 `immutable` 이며, disk의 file이나 프로그래밍으로 생성한 image data 같은 현존하는 이미지로부터 `UIImage` 객체를 만듭니다.
- 이미지 객체(image object)는 단일 이미지거나, animation을 사용한 연속된 이미지(.gif)들도 될 수 있습니다.



### Several different ways to using image objects

1) [`UIImageView`](https://developer.apple.com/documentation/uikit/uiimageview) object에 할당하여 인터페이스 화면에 표시하기 위해 이미지 사용

2) 버튼, 슬라이더, segmented controls 과 같은 시스템 컨트롤들을 커스터마이징하기위해 이미지 사용

3) view나 다른 시각적인 컨텐스트를 위해 직접 이미지를 그림

4) 이미지 데이터를 요구하는 다른 APIs에게 이미지를 전달



### Image Objects 생성

- 앞서 말했듯 파일이나 자료구조상에 위치한 현존 이미지를 지녀야 한다. 비어있는 이미지나 비어있는 이미지에 콘텐츠를 그려넣을 수 없습니다.

- 각각의 이미지 생성방식은 상황에 맞게 최적화된 이미지 옵션을 제공합니다.

##### [`1. init(named:in:compatibleWith:)`](https://developer.apple.com/documentation/uikit/uiimage/1624154-init) (==  `init(named:)`)

- image asset 또는 app의 main bundle에 위치한 이미지 파일로부터 이미지 객체를 생성하는데 사용합니다. 
- 이 메서드들은 **이미지 데이터를 자동으로 캐싱**하기 때문에, **빈번하게 사용하는 이미지**들을 위해 권장되는 방식입니다.

#####  [`2. imageWithContentsOfFile:`](https://developer.apple.com/documentation/uikit/uiimage/1624123-imagewithcontentsoffile) 또는 [`init(contentsOfFile:)`](https://developer.apple.com/documentation/uikit/uiimage/1624112-init) 

- 초기 데이터가 **번들에 존재하지 않는 이미지 객체를 생성**하는데 사용합니다.
- 이 메서드들은 **매번 이미지를 디스크의 데이터로부터 읽어**오기때문에, **반복적으로 같은 이미지**를 **load** 하는 것은 **권장되지 않습니다.**

#####[`3. animatedImage(with:duration:)`](https://developer.apple.com/documentation/uikit/uiimage/1624149-animatedimage) 와 [`animatedImageNamed(_:duration:)`](https://developer.apple.com/documentation/uikit/uiimage/1624094-animatedimagenamed) 

- multiple sequential image들로 구성된 단일 UIImage object를 생성하는데 사용합니다. 
- 결과 이미지를  [`UIImageView`](https://developer.apple.com/documentation/uikit/uiimageview) object에 설치함으로써 인터페이스 내에 애니메이션들을 생성합니다.

##### 4. UIImage 클래스를 위한 다른 메서드들

- 특정 타입의 데이터(Core Graphics images 혹은 사용자가 생성한 이미지데이터) 로부터 애니메이션을 생성할 수 있게 해줍니다. 

- UIKit은 [`UIGraphicsGetImageFromCurrentImageContext()`](https://developer.apple.com/documentation/uikit/1623924-uigraphicsgetimagefromcurrentima)  와 같은 메서드를 제공하는데, 해당 함수는 **직접 그린 콘텐츠로부터 이미지를 생성하는 함수**입니다. 또한 비트맵 기반 그래픽 컨텍스트와 함께 사용하면, 그리기 명령을 캡쳐할 수 있습니다.



> ### 주의 
>
> 이미지 객체는 immutable이므로, 생성 후에 프로퍼티들을 변경할 수 없습니다. 대부분의 이미지 프로퍼티들은 이미지 파일/이미지 데이터에 포함된 메타데이터를 사용하여 자동적으로 설정됩니다. 이미지 객체의 불변 특성은 다른 스레드에서 생성과 사용에 있어 안전하다는 것을 의미하기도 합니다.



- **Image assets**은 앱에서 제공할 이미지를 관리하는 가장 쉬운 방법입니다. 각각의 Xcode 프로젝트에는 여러 image sets를 추가 할 수있는 assets library가 있습니다. 

  - 하나의 image set에는 앱에서 사용하는 **단일 이미지의 유사 콘텐츠**가 포함되어 있습니다. 

  -  단일 **image set**는 다양한 플랫폼, 다양한 특성 환경 (소형 또는 일반) 및 **다양한 scale factors**에 대해 **서로 다른 버전의 이미지를 제공** 할 수 있습니다. 

    - (가령, 기기에서 지원하는 해상도에 따라 같은 이미지의 x1, x2, x3 버전의 해상도를 제공할 수 있습니다.)

    

- 디스크에서 이미지를 load 하는 것 외에도 [`UIImagePickerController`](https://developer.apple.com/documentation/uikit/uiimagepickercontroller)  객체를 사용하여 **사용 가능한 카메라** 또는 **사진 라이브러리에서 이미지를 제공**하도록 **사용자에게 요청**할 수 있습니다. 

  - 이미지 선택 도구는 이미지를 선택하기위한 사용자 정의 사용자 인터페이스를 표시합니다. 
  - 사용자가 제공한 이미지에 액세스하려면 **명시적인 사용자 권한이 필요**합니다. 



### Stretchable Image 정의하기

##### Definition

> 기본 이미지 데이터가 예술적으로 즐거운 방식으로 **복제 될 수있는 영역을 정의하는 이미지**

##### Stretchable images 쓰임새

> 일반적으로 화면상의 가용 공간을 채우기 위해 **커지거나 줄어들 수 있는** ***배경* 을 만드는 데 사용**됩니다.

##### How?

기존 이미지에 `inset` 를 추가하여  **Stretchable images**를 정의할 수 있습니다.

inset는 이미지를 두 개 이상의 부분으로 세분합니다.

다음의 그림1은 각각의 inset으로 0이 아닌 값을 입력하면 이미지를 9분할한 결과를 보여줍니다.

#### 그림1

![9분할](./images/step7/image_insets.png)



- 각 inset은 주어진 차원에서 **`스트레칭되지 않는 이미지의 부분`**  을 정의합니다.



#### 그림2

![그림2](./images/step7/image_stretching.png)

- 그림 2는 사용 가능한 공간을 채우기 위해 이미지 자체가 늘어나면서 9 부분 이미지의 각 부분이 어떻게 늘어나는지를 보여줍니다.
- 이미지의 코너영역은 수평/수직 inset 내에 있기때문에 크기가 변하지 않습니다.



### Image들의 비교

[`isEqual(_:)`](https://developer.apple.com/documentation/objectivec/nsobjectprotocol/1418795-isequal) 메서드는 두 이미지에 **동일한 이미지 데이터가 포함되어 있는지 여부를 확인**하는 유일한 방법입니다.

- 설령 동일한 캐시된 이미지 데이터로부 생성한 이미지 객체도, 생성한 이미지 객체들은 서로 다릅니다. 
- 아래는 isEqual 메서드 활용의 좋은 예와 나쁜 예입니다.
- **비교 기준이 되는 이미지에 대해 반드시 nil 여부를 먼저 확인**을 해야 합니다.

```swift
let image1 = UIImage(named: "MyImage")
let image2 = UIImage(named: "MyImage") 
if image1 != nil && image1!.isEqual(image2) {
    // Correct. This technique compares the image data correctly.
} 
if image1 == image2 {
    // Incorrect! Direct object comparisons may not work.
}
```





### 추가 참고자료

[Providing Images for Different Appearances](https://developer.apple.com/documentation/uikit/uiimage/providing_images_for_different_appearances)

