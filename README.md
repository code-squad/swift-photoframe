* # 사진액자 앱

  ## photoframe-step1
  
* 2020.02.03 21:30 
    ViewController 클래스 viewDidLoad() 함수에서 `print(#file, #line, #function, #column)` 코드를 추가 후 실행 콘솔 영역 출력 확인
  * ![](https://i.imgur.com/ByWM4rP.jpg)
  
  ## photoframe-step2 
  
  * 2020.02.03 22:00 
    First Scene에 만들어져 있는 레이블들(firstLabel, firstDescription)을 IBOutlet으로 연결 후 연결한 아웃렛 변수에 값을 변경.
  
  ![](https://i.imgur.com/tYIlRs0.jpg)
  
  ## photoframe-step3 
  
  * 2020.02.04 15:12
    First Scene에 버튼을 추가하고 IBAction으로 연결. 
    연결 후 텍스트 색상과 배경색, 투명도를 변화시키는 액션에 대한 메서드 구현.
    ![](https://i.imgur.com/BmwDnRI.png)
  
  (왼쪽 스냅샷 : `다음` 버튼 누르기 전 , 오른쪽 스냅샷 : `다음` 버튼 누른 후 )
  
  ## photoframe-step4
  
  * 2020.02.04 16:40
  
    두 개의 Scene 추가. 두번째 화면(Indigo 색상)에서 세번째 화면(Purple)로 넘어갈 때 Segue 추가
  
  ![](https://i.imgur.com/hoDmuMG.png)
  
  (첫번째 스냅샷 : `다음` 버튼 누르기 전 , 두번째 스냅샷 :첫번째 페이지에서 `다음` 버튼 누른 후 Indigo 배경색 화면, 세번째 스냅샷 : 두번째 페이지에서 `다음` 버튼 누른 후 Purple 배경색 화면)
  
  ## Photoframe-step5
  
  * 2020.02.04 17:56
  
    ViewController 클래스 추가 및 스토리보드 Scene 과 연결.
    `[닫기]` 버튼 생성 및 IBAction 연결해 화면을 닫는 액션 추가.
    UIViewController 주요 콜백 함수(viewWillAppear(), viewDidAppear(), viewWillDisappear(), viewDidDisappear() )에 print(**#file**, **#line**, **#function**, **#column**) 코드를 추가하여 화면 전환이 이뤄지는 사이 ViewController의 라이프사이클 변화 확인. 
  
    ![](https://i.imgur.com/kpV1kui.png)
    ![](https://i.imgur.com/stgYsLt.png)
  
    (첫번째 스냅샷 - 왼쪽: IndigoViewController 화면 열림, 첫번째 스냅샷 - 오른쪽: IndigoViewController 화면에서 `[닫기]` 버튼을 누른 후 화면 닫힘 / 두번째 스냅샷 - 왼쪽 : PurpleViewController 화면 열림, 두번째 스냅샷 - 오른쪽 : PurpleViewController 화면에서 `[닫기]` 버튼을 누른 후 화면 닫힘 )
  
  > 화면이 새로 열릴 때 : viewDidLoad() -> viewWillAppear()
  >
  > 화면이 닫힐 때 : viewWillDisappear() -> viewDidDisappear()
  >
  > 화면은 스택으로 쌓이며 가장 나중에 열린 화면이 닫히고 그 전 화면이 나올 때, 다시  viewDidLoad() -> viewWillAppear() 를 거치지 않고 바로 화면이 보임.
  
  ## Photoframe-step6
  
  * 2020.02.04 18:42
  
    First Scene에 NavigationController 추가 한 후 다음 버튼을 누르면 다음 화면이 우측에서 좌측으로 애니메이션 되면서 표시됨.
    IndigoViewController 와 PurpleViewController 의 `closeButtonTouched` 코드 수정.
    UIViewController 주요 콜백 함수(viewWillAppear(), viewDidAppear(), viewWillDisappear(), viewDidDisappear() )에 print(**#file**, **#line**, **#function**, **#column**) 코드를 추가하여 화면 전환이 이뤄지는 사이 ViewController의 라이프사이클 변화 확인. 
  
  ![](https://i.imgur.com/pt1yxch.jpg)
  ![](https://i.imgur.com/eBxCseg.jpg)
  
  (첫번째 스냅샷 - 왼쪽: IndigoViewController 화면 열림, 첫번째 스냅샷 - 오른쪽: IndigoViewController 화면에서 `[닫기]` 버튼을 누른 후 화면 닫힘 / 두번째 스냅샷 - 왼쪽 : PurpleViewController 화면 열림, 두번째 스냅샷 - 오른쪽 : PurpleViewController 화면에서 `[닫기]` 버튼을 누른 후 화면 닫힘 )
  
  >  화면이 새로 열릴 때 : viewDidLoad() -> viewWillAppear()
  >
  >  (navigationController 추가 전과 비교했을 때 다른 부분) 이전 화면이 사라지고 다음 화면이 열릴때 : 다음 화면 viewDidLoad() -> 이전 화면 viewWillDisappear -> 다음화면 viewWillAppear() -> 이전화면 viewDidDisappear()
  >
  >  (navigationController 추가 전과 비교했을 때 다른 부분) 화면이 닫히고 이전 화면이 열릴 때 : 현재 화면 viewWillDisappear() -> 이전 화면 viewWillAppear() -> 현재 화면 viewDidDisappear()
  >
  >  화면이 닫힐 때 : viewWillDisappear() -> viewDidDisappear()
  >
  >  화면이 사라지고 다시 보여질 때 이전에 한 번 로드한 화면이라면 다시 돌아올 때 viewDidLoad()와  viewWillAppear()가 호출되지 않았는데, NavigationController 추가 후 사이클이 변경됨.
  
  ## Photoframe-step7
  
  * 2020.02.05 01:40
  
    Second Scene 디자인 변경.
  
    UIImageView 생성 후 photoImageView 아울렛으로 연결
  
    label 이름 및 "Photo Album"으로 텍스트 변경
  
    다음 버튼 추가 및 nextImageButtonTouched 액션으로 연결
  
    다운로드한 사진 리소스를 Xcode 프로젝트 Assets에 추가
  
    generateRandomNumber() 메소드 생성
  
    generateRandomImage() 메소드 생성
  
  ![](https://i.imgur.com/bRc6Rlk.jpg)
  
  > 이미지의 제목이 01.jpg ~ 22.jpg 연속된 숫자임을 착안해 generateRandomImage() 메소드에서 generateRandomNumber() 메소드를 통해 생성된 랜덤 숫자를 이름으로 하는 UIImage를 반환해  UIImageView의 image 로 삽입하도록 구현.
  
  * 2020.02.05 
    이미지 규격이 일정하게 유지되도록 content mode를 aspect fill로 변경
  
    > Scale to fill` - 미리 설정한 이미지 규격에 맞춰서 해당 이미지가 변형됨.(늘어나거나 줄어듦) ImageView의 Width와 height에 이미지를 변형해 ImageView에 넣음.
    >
    > `Aspect fit` - 원본 이미지의 크기 그대로 들어감. 비율 유지! 원본의 비율을 그대로 유지함. 비율이 맞지 않는경우 내부에 `여백` 이 생김.
    >
    > `Aspect fill` - 미리 설정한 이미지 규격 내의 이미지만 보이며 이외의 부분은 보이지 않음(잘림). 원본의 비율을 그대로 유지되지만 이미지가 짤림. ImageView의 내부에 `여백`이 생기지 않음.
  
    ![image-20200205132139699](/Users/keunnalee/Library/Application Support/typora-user-images/image-20200205132139699.png)
  
  ## Photoframe-step7-plus
  
  * 2020.02.05 17:10 
  
    UIImageView 추가
    UIImageView에 액자 이미지 추가
  
    ![image-20200205172541031](/Users/keunnalee/Library/Application Support/typora-user-images/image-20200205172541031.png)
  
  ## Photoframe-step7-Gallery
  
  * 2020.02.07 18:20
  
  ### 갤러리에서 사진 가져오기
  
  ### 과정
  
  1. 선택 버튼 생성
  2. permission 작업 : indo.plist에서 앨범 접근 권한 추가
  3. ViewController 인스턴스 생성
  4. extention으로 SecondViewController의 Delegate 채택 ( UIImagePickerControllerDelegate, UINavigationControllerDelegate)
  5. UIImagePickerController의 소스타입을 사진 라이브러리로 지정.
  6. '다음' 버튼을 누르면 디바이스의 사진 라이브러리(갤러리)가 present 되는 코드 추가
  7. extension한 곳에 imagePickerController() 메소드 구현. 
  8. 사진 라이브러리(갤러리)에서 사진을 선택하고 선택 화면이 dismiss 되는 코드 추가
  
  ![](https://i.imgur.com/G51auMi.jpg)
  
  
  
  ### 사진 라이브러리에서 사진 가지고 올 때 필요한 작업
  
  1. viewController 인스턴스 생성
  2. Delegate 지정
  3. 버튼 선택시 사진 라이브러리가 present 
  4. extension으로 관련 Deletage를 채용
  5. extension한 부분에 imagePickerController() 메소드 (사진 라이브러리에서 사진을 선택해 가지고 옴)
  
  ![Screen Shot 2020-02-07 at 6.26.28 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-07 at 6.26.28 PM.png)
  
  ![Screen Shot 2020-02-07 at 6.26.40 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-07 at 6.26.40 PM.png)
  
  ![Screen Shot 2020-02-07 at 6.26.49 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-07 at 6.26.49 PM.png)
  
  ### 배운 것
  
  1. info는 Dictionary로 이뤄져 있고 type, url, originalImage를 키로 갖는 3쌍으로 이뤄져 있다. 그래서 갤러리에서 사진을 가져올 때,Info Dictionary에서  UIImagePickerControllerOriginalImage를 키로 가지는 값을 가지고 오면 UIImage를 얻을 수 있다.
  2. 사진 라이브러리에서 이미지를 선택해서 가지고 오는 메소드를 구현해도 이미지를 선택하는 화면을 dismiss 하지 않으면 이전 화면으로 돌아가지 않는다.
  
  ### 실패한 것과 결론
  
  **[ 실패 하나 😢]** 
  ![](https://i.imgur.com/7pnSFMb.png)
  
  viewDidLoad에서 코드를 추가하면 
  
  ```swift
  imagePickerController.delegate = self
  ````
  
  `Cannot assign value of type 'SecondViewController' to type '(UIImagePickerControllerDelegate & UINavigationControllerDelegate)?'` 이라는 메세지의 에러가 발생한다.
  **[ 결론 👩‍💻 ]**
  ViewController의 extension 생성해주지 않아서 에러가 난 것이었다. 따라서 UIImagePickerControllerDelegate, UINavigationControllerDelegate를 상속받은 extention을 생성해준다.
  
  **[ 실패 둘 😢]** 
  사진 라이브러리에서 사진을 선택한 후 이전 화면으로 돌아가지 않았다.
  
  **[ 결론 👩‍💻 ]**
  
  ```swift
  dismiss(animated: true, completion: nil)
  ```
  
  사진을 선택하는 화면을 dismiss하는 코드를 추가한다.
  
  ### 궁금했던 점
  
  🧐❓:UIImagePickerControllerDelegate를 채택 할 때 UINavigationControllerDelegate도 채택해야하는 이유는? 
  
  UIImagePickerControllerDelegate의 delegate 속성은 UIImagePickerControllerDelegate와 UINavigationControllerDelegate 프로토콜을 모두 구현하는 객체로 정의되어있다. 
  
  ```swift
   override func viewDidLoad() {
          super.viewDidLoad()
       imagePickerController.delegate = self
  }
  ```
  
  여기서 self를 UIImagePickerController.delegate에 할당하려면 self는 UINavigationControllerDelegate 타입이어야 한다. 
  
  지금, imagePickerController의 델리게이트를 UINavigationControllerDelegate에 위임해준 것인데, 대리자는 사용자가 이미지나 동영상을 선택하거나 imagePickerController 화면을 종료할 때, 알림을 받는다. 
  출처: https://zeddios.tistory.com/125 [ZeddiOS]
  
  
  
  
  
  