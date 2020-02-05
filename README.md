# 사진액자 앱



### photoframe-step1

* 2020.02.03 21:30 
  ViewController 클래스 viewDidLoad() 함수에서 `print(#file, #line, #function, #column)` 코드를 추가 후 실행 콘솔 영역 출력 확인

![image-20200203212810017](/Users/keunnalee/Library/Application Support/typora-user-images/image-20200203212810017.png)

### photoframe-step2 

* 2020.02.03 22:00 
  First Scene에 만들어져 있는 레이블들(firstLabel, firstDescription)을 IBOutlet으로 연결 후 연결한 아웃렛 변수에 값을 변경.

![image-20200203220128744](/Users/keunnalee/Library/Application Support/typora-user-images/image-20200203220128744.png)

### photoframe-step3 

* 2020.02.04 15:12
  First Scene에 버튼을 추가하고 IBAction으로 연결. 
  연결 후 텍스트 색상과 배경색, 투명도를 변화시키는 액션에 대한 메서드 구현.
  ![Screen Shot 2020-02-04 at 3.03.30 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-04 at 3.03.30 PM.png)

(왼쪽 스냅샷 : `다음` 버튼 누르기 전 , 오른쪽 스냅샷 : `다음` 버튼 누른 후 )

### photoframe-step4

* 2020.02.04 16:40

  두 개의 Scene 추가. 두번째 화면(Indigo 색상)에서 세번째 화면(Purple)로 넘어갈 때 Segue 추가

![Screen Shot 2020-02-04 at 4.33.04 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-04 at 4.33.04 PM.png)

(첫번째 스냅샷 : `다음` 버튼 누르기 전 , 두번째 스냅샷 :첫번째 페이지에서 `다음` 버튼 누른 후 Indigo 배경색 화면, 세번째 스냅샷 : 두번째 페이지에서 `다음` 버튼 누른 후 Purple 배경색 화면)

### Photoframe-step5

* 2020.02.04 17:56

  ViewController 클래스 추가 및 스토리보드 Scene 과 연결.
  `[닫기]` 버튼 생성 및 IBAction 연결해 화면을 닫는 액션 추가.
  UIViewController 주요 콜백 함수(viewWillAppear(), viewDidAppear(), viewWillDisappear(), viewDidDisappear() )에 print(**#file**, **#line**, **#function**, **#column**) 코드를 추가하여 화면 전환이 이뤄지는 사이 ViewController의 라이프사이클 변화 확인. 

![Screen Shot 2020-02-04 at 6.01.08 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-04 at 6.01.08 PM.png)

![Screen Shot 2020-02-04 at 6.01.59 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-04 at 6.01.59 PM.png)

(첫번째 스냅샷 - 왼쪽: IndigoViewController 화면 열림, 첫번째 스냅샷 - 오른쪽: IndigoViewController 화면에서 `[닫기]` 버튼을 누른 후 화면 닫힘 / 두번째 스냅샷 - 왼쪽 : PurpleViewController 화면 열림, 두번째 스냅샷 - 오른쪽 : PurpleViewController 화면에서 `[닫기]` 버튼을 누른 후 화면 닫힘 )

> 화면이 새로 열릴 때 : viewDidLoad() -> viewWillAppear()
>
> 화면이 닫힐 때 : viewWillDisappear() -> viewDidDisappear()
>
> 화면은 스택으로 쌓이며 가장 나중에 열린 화면이 닫히고 그 전 화면이 나올 때, 다시  viewDidLoad() -> viewWillAppear() 를 거치지 않고 바로 화면이 보임.

### Photoframe-step6

* 2020.02.04 18:42

  First Scene에 NavigationController 추가 한 후 다음 버튼을 누르면 다음 화면이 우측에서 좌측으로 애니메이션 되면서 표시됨.
  IndigoViewController 와 PurpleViewController 의 `closeButtonTouched` 코드 수정.
  UIViewController 주요 콜백 함수(viewWillAppear(), viewDidAppear(), viewWillDisappear(), viewDidDisappear() )에 print(**#file**, **#line**, **#function**, **#column**) 코드를 추가하여 화면 전환이 이뤄지는 사이 ViewController의 라이프사이클 변화 확인. 

![Screen Shot 2020-02-04 at 6.26.12 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-04 at 6.26.12 PM.png)

![Screen Shot 2020-02-04 at 6.27.18 PM](/Users/keunnalee/Desktop/Screen Shot 2020-02-04 at 6.27.18 PM.png)

(첫번째 스냅샷 - 왼쪽: IndigoViewController 화면 열림, 첫번째 스냅샷 - 오른쪽: IndigoViewController 화면에서 `[닫기]` 버튼을 누른 후 화면 닫힘 / 두번째 스냅샷 - 왼쪽 : PurpleViewController 화면 열림, 두번째 스냅샷 - 오른쪽 : PurpleViewController 화면에서 `[닫기]` 버튼을 누른 후 화면 닫힘 )

>  화면이 새로 열릴 때 : viewDidLoad() -> viewWillAppear()
>
> (navigationController 추가 전과 비교했을 때 다른 부분) 이전 화면이 사라지고 다음 화면이 열릴때 : 다음 화면 viewDidLoad() -> 이전 화면 viewWillDisappear -> 다음화면 viewWillAppear() -> 이전화면 viewDidDisappear()
>
> (navigationController 추가 전과 비교했을 때 다른 부분) 화면이 닫히고 이전 화면이 열릴 때 : 현재 화면 viewWillDisappear() -> 이전 화면 viewWillAppear() -> 현재 화면 viewDidDisappear()
>
> 화면이 닫힐 때 : viewWillDisappear() -> viewDidDisappear()
>
> 화면이 사라지고 다시 보여질 때 이전에 한 번 로드한 화면이라면 다시 돌아올 때 viewDidLoad()와  viewWillAppear()가 호출되지 않았는데, NavigationController 추가 후 사이클이 변경됨.



### Photoframe-step7

* 2020.02.05 01:40

  Second Scene 디자인 변경.

  UIImageView 생성 후 photoImageView 아울렛으로 연결

  label 이름 및 "Photo Album"으로 텍스트 변경

  다음 버튼 추가 및 nextImageButtonTouched 액션으로 연결

  다운로드한 사진 리소스를 Xcode 프로젝트 Assets에 추가

  generateRandomNumber() 메소드 생성

  generateRandomImage() 메소드 생성

![image-20200205020148115](/Users/keunnalee/Library/Application Support/typora-user-images/image-20200205020148115.png)

> 이미지의 제목이 01.jpg ~ 22.jpg 연속된 숫자임을 착안해 generateRandomImage() 메소드에서 generateRandomNumber() 메소드를 통해 생성된 랜덤 숫자를 이름으로 하는 UIImage를 반환해  UIImageView의 image 로 삽입하도록 구현.

* 2020.02.05 
  이미지 규격이 일정하게 유지되도록 content mode를 aspect fill로 변경

  > Scale to fill` - 미리 설정한 이미지 규격에 맞춰서 해당 이미지가 변형됨.(늘어나거나 줄어듦) ImageView의 Width와 height에 이미지를 변형해 ImageView에 넣음.
  >
  > `Aspect fit` - 원본 이미지의 크기 그대로 들어감. 비율 유지! 원본의 비율을 그대로 유지함. 비율이 맞지 않는경우 내부에 `여백` 이 생김.
  >
  > `Aspect fill` - 미리 설정한 이미지 규격 내의 이미지만 보이며 이외의 부분은 보이지 않음(잘림). 원본의 비율을 그대로 유지되지만 이미지가 짤림. ImageView의 내부에 `여백`이 생기지 않음.

  ![image-20200205132139699](/Users/keunnalee/Library/Application Support/typora-user-images/image-20200205132139699.png)

### Photoframe-step7-plus

* 2020.02.05 17:10 

  UIImageView 추가
  UIImageView에 액자 이미지 추가

  ![image-20200205172541031](/Users/keunnalee/Library/Application Support/typora-user-images/image-20200205172541031.png)