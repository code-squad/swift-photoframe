## 초기화면

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73809836-dbf5fb00-4817-11ea-95c5-25dc6c8788cd.png">

## Tab bar 누른 후

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73809852-e4e6cc80-4817-11ea-99ed-ca5f661ad344.png">



## 다음 버튼 누른 후

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73810125-cf25d700-4818-11ea-84bb-a4a371267091.png">



## 닫기 버튼 누른 후

<img width="300" alt="image" src="https://user-images.githubusercontent.com/37682858/73810132-d351f480-4818-11ea-97eb-ac223fe4ac2e.png">



### 변경 사항

* second tap에 imageView 추가 하여 image를 띄워 줄 수 있게 함.
* second tap에 button을 추가 하여 랜덤으로 이미지를 띄워 줌.

### UIImageView, UIImage

* UIImageView
  * 이미지 또는 움직이는 이미지를 표시해주는 객체
  * UIImage 객체를 사용하여 UIImageVIew에 이미지를 띄울 수 있음
  * 이미지의 크기, 비율, 투명도 등 속성을 조정할 수 있음.
  * 터치 이벤트를 장착하여 사용자의 action에 피드백을 줄 수 있음.
* UIImage
  * 이미지 데이터를 관리하는 객체

### 이미지 뷰의 속성

* scaleToFill
  * imageView의 크기에 맞춰 image의 크기를 변경 해줌
  * 비율이 바뀔 수 있음
* scaleAspectFit
  * imageView의 크기에 맞게 image의 크기를 조정 함. 남는 부분은 투명
  * 비율 유지 함
* scaleAspectFill
  * imageView에 빈 영역 없이 image를 채움. 일부 내용 잘릴 수 있음
  * 비율 유지 함
* center
  * image의 중앙 부분을 view에 보여줌.
  * 비율 유지 함
* top
  * image의 상단 부분을 view에 보여줌.
* bottom
  * image의 하단 부분을 view에 보여줌.
* left
  * image의 왼쪽 부분을 view에 보여줌.
* right
  * image의 오른쪽 부분을 view에 보여줌.
* topLeft
  * image의 왼쪽 상단 부분을 view에 보여줌.
* topRight
  * image의 오른쪽 상단 부분을 view에 보여줌.
* bottomLeft
  * image의 하단 왼쪽 부분을 view에 보여줌.
* bottomRight
  * image의 하단 오른쪽 부분을 view에 보여줌.

### 완료 시간

2020-02-05-10:40