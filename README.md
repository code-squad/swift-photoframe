

# Photoframe-step7(Second Scene), Final



## 진행

#### step7

- Second Scene viewController 생성 후 imageview, label, button 생성
- 지정된 사진 assets에 올리고 `String`, `Int.random` 활용해 랜덤으로 그림 표시

#### final

- 액자를 ImageView 아래에 배치
- `UIImagePickerController` 를 사용해 카메라롤에서 사진을 가져오기



## Study



### Content Mode

#### Scale to Fill

전체 이미지가 해당 틀에 무조건 맞게끔 조정

#### Aspect Fit
이미지 비율을 맞춰 표시하지만 이미지가 틀보다 작으면 매우 작게 표시될 수 있습니다

#### Aspect Fill

비율도 유지되고 틀에 맞춰 채우지만 이에 따른 사진 부분이 짤려 안보일 수 있습니다. 

이미지가 ImageView 밖으로 빠져나갈 수 있는데 이럴때 

1. ImageView의 clip to Bound 항목을 체크하거나

2. `imageView.layer.masksToBounds = true`

를 하면 해결된다





### UIImage, UIImageView



#### UIImage

An object that manages image data in your app.

앱에서 이미지 데이터를 관리하는 개체

#### UIImageView

An object that displays a single image or a sequence of animated images in your interface.

인터페이스에서 단일 이미지 또는 애니메이션 이미지를 표시하는 개체

ImageView를 통해 표준 이미지파일을 인터페이스에 표시하게 되는데 이미지의 투명도(Transparency), 크기(Scaled), 이벤트 처리 등 인터페이스와 관련이 있다.





### UIImageView의 여러 property

```swift
let image = UIImage(named: "01.jpg")
// image init
let imageView = UIImageView(image: image)

// 크기 줄이기
photoImageView.image = UIImage(named: "02.jpg")
photoImageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)

// rotate
let angle: CGFloat = CGFloat((30.0 * Double.pi) / 180.0)
photoImageView.transform = CGAffineTransform(rotationAngle: angle)

//Aspect Fill로 변경
photoImageView.contentMode = .scaleAspectFill

// 크기 변경
photoImageView.frame.size = CGSize(width: 20, height: 20)

// view 기준 중앙정렬
photoImageView.center = self.view.center

```



### Delegate

한 유형의 인스턴스가 다른 인스턴스를 대신하여 작동하는 패턴입니다.

이는 기능을 위임할 수 있는 Delegate가 있다는건 효율성 관점에서 중요합니다

### Protocol

class나 struct가 어떤 기준을 만족하거나 특수한 목적을 달성하기 위해 구현해야 하는 메소드와 프로퍼티 목록입니다.



### Delegate, Protocol 상관관계

class는 단일상속만 지원하기 때문에 제한이 없는 프로토콜을 사용한다.

또한 대리자가 해당 Delegate를 채택하게 되면 채택한 Delegate의 protocol을 따라야 한다는 규약을 대리자와 위임자 모두 알아야 하기 때문에 protocol의 개념은 중요하다



### System View Controllers

- UIVideoEditorController: 비디오 편집 및 인코딩 관련 시스템 인터페이스를 관리하는 컨트롤러

- Document Browser & Previewing iCloud Sharing: 로컬 및 클라우드에 저장 한 문서를 찾아보고 작업을 수행하기위한보기 컨트롤러

- UIPrinterPickerController: 프린터 선택을 위한 인터페이스를 관리하는 컨트롤러

- UIReferenceLibraryViewController: 단어 또는 용어의 정의를 조회하기 위한 표준 인터페이스를 표시하는 뷰 컨트롤러
  - A `UIReferenceLibraryViewController` object should not be used to display wordlists, create a standalone dictionary app, or republish the content in any form.
- UISearchcontroller: 검색결과를 나타내는 등 검색 기능을 통해 앱을 개선



### UIImagePickercontroller



#### UIImageView 제스처 인식

```swift
let tapGesture = UITapGestureRecognizer(target: self, action: #selector(touchPhotoImageview))
photoImageView.addGestureRecognizer(tapGesture)
photoImageView.isUserInteractionEnabled = true
```



#### Info.plist

Privacy - Photo Library Usage Description: 액자에 걸어둘 사진을 라이브러리에서 고르려고 합니다. 라고 설정을 했지만

UIImagePickerController를 사용할때는 Privacy - Photo Library Usage Description 권한을 요청할 필요가 없다고 한다



### Core Image - 이미지 필터

필터 관련 기능을 `UIImageView`에서 처리할 줄 알았는데 알아보니 `Core Image`에서 처리해주고 있다.

```swift
// TabBar를 하나 더 연결해 세피아 톤으로 사진을 필터해주는 간단한 CIFilter 구현
override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    let imageNum = String(format: "%02d", Int.random(in: 1...22))
    guard let uiImage = UIImage(named: "\(imageNum).jpg") else { return }
    guard let image = CIImage(image: uiImage) else { return }
    guard let filter = CIFilter(name: "CISepiaTone") else { return }

    filter.setValue(image, forKey: kCIInputImageKey)
    filter.setValue(0.7, forKey: kCIInputIntensityKey)

    guard let filterOutputImage = filter.outputImage else { return }

    let newImage = UIImage(ciImage: filterOutputImage)
    self.imageView.image = newImage
}
```









완료시간 02/11 00:50

![스크린샷 2021-02-09 오후 11 26 35](https://user-images.githubusercontent.com/62657991/107377539-6c9f9f00-6b2e-11eb-92c0-5efb4fc9da21.png)
![스크린샷 2021-02-09 오후 11 26 56](https://user-images.githubusercontent.com/62657991/107377549-71645300-6b2e-11eb-818a-088e79054b55.png)



![스크린샷 2021-02-11 오전 12 52 40](https://user-images.githubusercontent.com/62657991/107534732-77783380-6c03-11eb-8fb3-f543be83e6ec.png)

![스크린샷 2021-02-11 오전 12 51 11](https://user-images.githubusercontent.com/62657991/107534612-5dd6ec00-6c03-11eb-8d59-f02e8d4050e5.png)





