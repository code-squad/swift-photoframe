# Tapped App

## Step-1 
### 스토리 보드 변경 및 콘솔 화면 출력

<p align="center">
<img width="1000" alt="스크린샷 2021-02-08 오후 8 16 17" src="https://user-images.githubusercontent.com/45817559/107228985-a2765200-6a60-11eb-8563-8059349c1741.png">
</p>

완성 날짜: 2021년 2월 8일 월요일 오후 10시 55분


## Step-2
### View에 Label 추가

<p align="center">
<img width="400" alt="스크린샷 2021-02-09" src="https://user-images.githubusercontent.com/45817559/107355567-fccfeb00-6b12-11eb-9dd0-7f689d66d29c.png">
</p>

완성 날짜: 2021년 2월 9일 화요일 오후 8시 10분

## Step-3
### IBAction

<p align="center">
<img width="300" alt="스크린샷 2021-02-10" src="https://user-images.githubusercontent.com/45817559/107476795-ec268000-6bb9-11eb-8d6f-2f16f1b53881.gif">
</p>

- Button 추가
- Button을 누를 때, 뗄 때의 액션 추가

완성 날짜: 2021년 2월 10일 수요일 오후 4시 8분

## Step-4
### Scene과 Segue

<p align="center">
<img width="300" alt="스크린샷 2021-02-10" src="https://user-images.githubusercontent.com/45817559/107487746-d6b95200-6bc9-11eb-9d81-4a1cc4f67b87.gif">
</p>

- 버튼과 Scene을 연결
- 사이의 화살표를 선택해 Segue의 속성을 변경할 수 있다 (Full Screen 등)


## Step-5
### ViewController 프로그래밍

<p align="center">
<img width="300" alt="스크린샷 2021-02-12" src="https://user-images.githubusercontent.com/45817559/107725770-56f6c900-6d2a-11eb-8340-1ec99cbfb6b1.gif">
</p>

- 뷰 컨트롤러 콜백 함수를 통해 라이프사이클 확인
- YellowViewController에서 Segue 제거 후 프로그래밍으로 다음 화면 보여줄 수 있게 코드 추가

## Step-6
### Container ViewController

<p align="center">
<img width="300" alt="스크린샷 2021-02-13" src="https://user-images.githubusercontent.com/45817559/107848691-c2c75780-6e38-11eb-9bc4-17ed9fbb6990.gif">
</p>

- Navigation Controller Embed
- 코드로 BlueViewController에 연결했던 부분 해제

## Step-7
### Second Scene 화면

<p align="center">
<img width="310" alt="step7" src="https://user-images.githubusercontent.com/45817559/107849957-f5c21900-6e41-11eb-8cc4-a46c080bf515.gif">
</p>


- Demo Images 프로젝트에 추가
- 1~22까지의 랜덤 숫자 생성
    - String(format: , _ )으로 랜덤 숫자 생성 후 01, 02과 같은 포맷 설정
- UIImageView ContentMode에서 scale~ 의 차이점
    - **scaleToFill**: 이미지 높이와 너비가 View의 크기와 일치하도록 비율 신경 쓰지 않고 늘어남
    - **scaleAspectFit**: 이미지의 **가장 긴** 쪽이 뷰와 일치하도록 늘어남 (비율을 왜곡시키지 않음)
    - **scaleAspectFill**: 이미지의 **가장 짧은** 쪽이 뷰와 일치하도록 늘어남 (비율이 왜곡되지 않지만, 이미지가 짤릴수도 있음)



## Step-8
### 액자 추가 & 사진첩에서 사진 불러오기

<p align="center">
<img width="310" alt="step8" src="https://user-images.githubusercontent.com/45817559/107875054-05546700-6f01-11eb-8e46-9e2088a248fe.gif">
</p>

- PhotoFrame-border 추가
- 사진첩에서 사진 불러오기 추가

