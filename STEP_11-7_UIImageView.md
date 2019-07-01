**STEP 11-7**



# 2. UIImageView

- 인터페이스에 단일 이미지나 연속 애니메이션 이미지들을 표시하기 위한 오브젝트이다.

```swift
class UIImageView : UIView
```



### Overview

- 이미지 뷰들은 UIImage 객체를 사용하여 구체화된 이미지를 그리는데 효과적입니다.
- UIImageView 클래스를 사용하면, 표준 이미지 파일들을 화면에 display 하는데 사용할 수 있습니다.
- 또한, 개발자는 스토리보드 파일에 이미지 뷰들을 프로그래밍으로 조정할 수 있고, runtime에 이미지를 변화시킬 수 있습니다.
- 애니메이션 이미지들을 위해, UIImageView 클래스의 메서드를 사용하면 애니메이션을 시작 | 중지 하거나, 다른 애니메이션의 파라미터들을 구체적으로 지정할 수 있습니다.



### Understanding How Images Are Scaled

- 이미지 뷰는 [`contentMode`](https://developer.apple.com/documentation/uikit/uiview/1622619-contentmode) 프로퍼티와 image 자신의 configuration을 사용해서 이미지의 display 방식을 결정합니다.
- 이미지의 크기(dimensions)가 이미지 view 크기(dimensions)와 정확하게 일치하는 것이 가장 좋으나, 이미지 뷰는 가용공간에 맞게 이미지 크기를 조정할 수 있습니다.
- 이미지 뷰의 크기가 변하면, 이미지는 필요한만큼 자동으로 크기를 조정합니다(scale).
- cap insets가 없는 이미지의 경우, 이미지의 presentation은 오직 이미지 뷰의 contentMode의 프로퍼티에 의해서만 결정됩니다.
  - [`UIView.ContentMode.scaleAspectFit`](https://developer.apple.com/documentation/uikit/uiview/contentmode/scaleaspectfit) , [`UIView.ContentMode.scaleAspectFill`](https://developer.apple.com/documentation/uikit/uiview/contentmode/scaleaspectfill) 모드
    - 이미지의 **원래 종횡비를 유지**하면서 공간에 맞게 채우기 위해 이미지의 크기를 조정합니다.
  - [`UIView.ContentMode.scaleToFill`](https://developer.apple.com/documentation/uikit/uiview/contentmode/scaletofill)  모드
    - **원본 종횡비에 관계없이** 이미지의 크기를 조절하므로 이미지가 **왜곡되어 나타날 수** 있습니다.
  - **다른 콘텐트 모드**는 **이미지를 스케일링하지 않고** 이미지 뷰의 경계에서 **적절한 위치에 배치**합니다.

#### 참고

 [Debugging Issues with Your Image View](https://developer.apple.com/documentation/uikit/uiimageview#1658399). 



---





### Determining the Final Transparency of the Image

image는 image view의 배경에 합성 된 다음, 나머지 창에 합성됩니다. 

image의 모든 **투명도**는 **이미지 뷰의** **배경**을 보여줍니다. 

마찬가지로 image 배경의 투명도는 `image view의 투명도`와 표시되는 `UIImage 객체의 투명도`에 따라 다릅니다. 

image view와 image 모두에 투명도가 있는 경우 이미지보기는 **`알파 블렌딩` 을 사용**하여 두 가지를 결합합니다.

1) 이미지는 **이미지 view의 배경에 합성**된다.

2-1) `이미지 뷰`의 [`isOpaque`](https://developer.apple.com/documentation/uikit/uiview/1622622-isopaque)  속성이 true 인 경우

-  이미지의 `픽셀`은 `이미지 뷰` 의 **배경색 위에 합성**되고 `이미지뷰`의 **alpha 속성은 무시**됩니다.

2-2)  `이미지 뷰`의 [`isOpaque`](https://developer.apple.com/documentation/uikit/uiview/1622622-isopaque)  속성이 false 인 경우

-  각 픽셀의 알파 값에 이미지 뷰의 알파 값이 곱해지며 결과 값은 해당 픽셀의 실제 투명도 값이됩니다. 이미지에 알파 채널이없는 경우 각 픽셀의 알파 값은 1.0으로 가정됩니다.



> #### 중요
>
> It is **computationally** **expensive** **to composite the alpha channel of an image with the alpha channel of a non-opaque image view.** The performance impact is further magnified if you use Core Animation shadows, because the shape of the shadow is then based on the contents of the view and must be dynamically computed. If you are not intentionally using the alpha channel of the image or the alpha channel of the image view, set the [`isOpaque`](https://developer.apple.com/documentation/uikit/uiview/1622622-isopaque) property to `true` to improve performance. For additional optimization tips, see [Tips for Improving Performance](https://developer.apple.com/documentation/uikit/uiimageview#1658379).



---



### Animating a Sequence of Images

- `이미지 뷰`는 **애니메이션 이미지 시퀀스를 저장**하고 해당 시퀀스의 **전부 또는 일부를 재생**할 수 있습니다. **UIImage 객체 배열**로 이미지 시퀀스를 지정하고 **[`animationImages`](https://developer.apple.com/documentation/uikit/uiimageview/1621068-animationimages) 속성에 할당**합니다. 
- 일단 할당되면, 클래스의 메서드와 속성을 사용하여 **애니메이션 타이밍을 구성**하고 **애니메이션을** **시작** 및 **중지** 할 수 있습니다.



> ### 주의
>
>  [`animatedImage(with:duration:)`](https://developer.apple.com/documentation/uikit/uiimage/1624149-animatedimage) 
>
> 위 메서드를 사용하여 일련의 개별 이미지들을 UIImage object로 만들 수 있습니다.
>
> 이렇게 하면  **[`animationImages`](https://developer.apple.com/documentation/uikit/uiimageview/1621068-animationimages) 속성 **에 개별 이미지들을 할당한 것과 같은 결과를 얻을 수 있습니다.



애니메이션 이미지들을 표시하기 위해서는 다음의 팁을 참고합니다.

- **시퀀스 내의 모든 이미지는 동일 사이즈여야 합니다.**
  - **스케일링이 필요하면** 이미지 뷰는 시퀀스 내의 **각각의 이미지들을 따로 스케일**해주어야 합니다.
  - 만약 이미지들이 서로 다른 사이즈라면, 스케일링의 결과가 원하는 결과랑 다를 수 있습니다.

- **시퀀스 내의 모든 이미지들은 동일한 콘텐트 scale factor를 사용해야 합니다.**
  - 각 이미지의 [`scale`](https://developer.apple.com/documentation/uikit/uiimage/1624110-scale) 프로퍼티가 모두 같은 값이어야 합니다.



### Responding to Touch Events

- 이미지 뷰들은 기본적으로 유저 이벤트들을 무시합니다.
- 일반적으로 이미지뷰는 인터페이스에 시각적인 콘텐츠로 나타내기 위해서만 사용합니다.
- 이미지 뷰와 유저 상호작용을 위해서는 [`isUserInteractionEnabled`](https://developer.apple.com/documentation/uikit/uiimageview/1621063-isuserinteractionenabled) 프로퍼티를 true로 바꿔줘야 합니다.



### 참조 - 이벤트 핸들링 가이드

 [Event Handling Guide for UIKit Apps](https://developer.apple.com/library/archive/documentation/EventHandling/Conceptual/EventHandlingiPhoneOS/index.html#//apple_ref/doc/uid/TP40009541).



### [ 중요 ] 성능 향상을 위한 팁

- **Cache scaled versions of frequently used images.**  크기가 큰 특정 이미지가 **축소된 `thumbnail`로 자주 표시될 것으로 예상되는 경우** 축소 이미지를 미리 만들어 축소판 캐시에 저장하는 것이 좋습니다. 이렇게하면 이미지 뷰를 개별적으로 확장 할 필요가 줄어 듭니다.
- **Use images whose size is close to the size of the image view.** 큰 이미지를 이미지 뷰에 할당하는 대신, **이미지 뷰의 현재 크기와 일치하는 크기 조정 된 버전의 이미지**를 만듭니다. 이미지 크기를 조정하는 대신 타일링하는  [`UIImage.ResizingMode.tile`](https://developer.apple.com/documentation/uikit/uiimage/resizingmode/tile)  옵션을 사용하여 크기 조정이 가능한 이미지 객체를 만들 수도 있습니다. 
- **Make your image view opaque whenever possible.** 의도적으로 투명도가 포함된 이미지 (예 : UI 요소 그리기)로 작업하는 경우가 아니면 이미지 뷰의 [`isOpaque`](https://developer.apple.com/documentation/uikit/uiview/1622622-isopaque)  속성이 true로 설정되어 있는지 확인하세요. 투명도가 결정되는 방법에 대한 자세한 내용은 [Determining the Final Transparency of the Image](https://developer.apple.com/documentation/uikit/uiimageview#1658343)를  참조하십시오.



### 이미지 뷰 디버깅 이슈

- **Load images using the correct method.** Use the [`init(named:in:compatibleWith:)`](https://developer.apple.com/documentation/uikit/uiimage/1624154-init) method of [`UIImage`](https://developer.apple.com/documentation/uikit/uiimage)to load images from asset catalogs or your app’s bundle. For images outside of your app’s bundle, use the [`imageWithContentsOfFile:`](https://developer.apple.com/documentation/uikit/uiimage/1624123-imagewithcontentsoffile) method.
- **Do not use image views for custom drawing.** The `UIImageView` class does not draw its content using the [`draw(_:)`](https://developer.apple.com/documentation/uikit/uiview/1622529-draw)method. Use image views only to present images. To do custom drawing involving images, subclass [`UIView`](https://developer.apple.com/documentation/uikit/uiview) directly and draw your image there.