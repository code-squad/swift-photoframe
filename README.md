# Tabbed APP

### 요구사항
1. TabBar Controller를 추가하고 Initial ViewController로 지정한다. (기존 UIViewController는 제거)
2. initial View Controller 설정
3. `viewDidLoad()`에 `print(#file, #line, #function, #column)` 추가 후 실행
---

#### 요구사항 1,2
<img width="1552" alt="스크린샷 2021-02-08 오후 8 04 19" src="https://user-images.githubusercontent.com/73683735/107233559-1109de80-6a66-11eb-927d-173fa2cc426c.png">

#### 요구사항 3
<img width="719" alt="스크린샷 2021-02-08 오후 11 33 10" src="https://user-images.githubusercontent.com/73683735/107233567-12d3a200-6a66-11eb-8fc1-23fa8bb25841.png">

#### 완성날짜 : 2021.02.09(화) 14:00


---
---

# IBOutlet

### 요구사항
- First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.
- 마찬가지로 firstDescription 레이블 생성후 아웃렛으로 연결한다.
- 연결한 아웃렛 변수에 값과 속성을 변경한다.



![스크린샷 2021-02-09 오후 5 15 23](https://user-images.githubusercontent.com/73683735/107334968-ba9aaf80-6afa-11eb-9f5e-662fb42a083d.png)



#### 완성날짜 : 2021.02.09(화) 17:18


---
---

# IBAction

#### 요구사항
- First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.
- 연결한 액션에 대한 메서드를 구현한다.

![ezgif com-gif-maker](https://user-images.githubusercontent.com/73683735/107347170-e45ad300-6b08-11eb-922f-3c9f8da2fc06.gif)



#### 완성날짜 : 2021.02.09(화) 19:00


---
---

# Scene과 Segue

#### 요구사항
- First Scene에서 Next Scene으로 가는 버튼을 만들고 segue로 연결한다.
- Next Scene에서 NextNext Scene으로 가는 버튼을 만들고 segue로 연결한다.

![ezgif com-gif-maker (3)](https://user-images.githubusercontent.com/73683735/107472331-1a07c680-6bb2-11eb-954f-ea53cbfa2f1b.gif)

#### 완성날짜 : 2021.02.10(수) 15:12


---
---

# ViewController 프로그래밍

#### 요구사항
- 스토리보드 구성 요소와 커스텀 클래스와 연결해서 동작을 확장한다.
- NextOfFirstView와 NextNextOfFirstView에 이전으로 가는 버튼을 구현한다.
- 만들어놓은 컨트롤러뷰에 주요 콜백에 print(#file, #line, #function, #column) 코드를 추가하여 동작을 확인한다.

![ezgif com-gif-maker (4)](https://user-images.githubusercontent.com/73683735/107482341-e5e8d180-6bc2-11eb-8c01-bc0d76ca08f6.gif)

#### 완성날짜 : 2021.02.10(수) 17:11

---
---

# Container ViewController

#### 요구사항
- 네이게이션바를 Embed in 한다.
- 닫기 버튼의 코드에 self.navigationController?.popViewController(animated: true) 를 추가하고 동작을 확인한다.



![스크린샷 2021-02-14 오후 7 57 07](https://user-images.githubusercontent.com/73683735/107884438-76fbd780-6f38-11eb-9287-ca47c52642ea.png)


네비게이션 컨트롤러는 스택을 가지고 있다.

제일 상위의 뷰를 보여준다.

POP하면 화면뿐 아니라 메모리상에서도 제거된다.

알게된것 : View(_)Disapper() 된다고해서 메모리에서 제거된 것은 아니다. deinit되어야 메모리에서 제거된다.


#### 완성날짜 : 2021.02.14(일) 18:00


---
---

# Second Scene 화면

#### 요구사항
- UIImageView를 화면 상단 중앙에 240 x 240 크기로 배치하고, `photoImageView` 아웃렛으로 연결한다.
- 화면 하단에 [다음] 버튼을 추가하고 `nextImageButtonTouched` 액션으로 연결한다.
- 다음 버튼 클릭시 사진 22개가 랜덤으로 photoImageView에 나오게 한다.
- 사진 테두리 액자 화면을 만들고 z축 위-아래를 구분하여 액자틀이 제일 아래로 가게 한다.
- 다음 버튼 밑 선택 버튼을 추가하고 사진보관함에서 사진 선택 시 photoImageView로 불러오게 한다.

![ezgif com-gif-maker (5)](https://user-images.githubusercontent.com/73683735/107884329-c8f02d80-6f37-11eb-885c-d2e11d15b9d4.gif)


#### 완성날짜 : 2021.02.15(월) 12:10

