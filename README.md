# 사진 액자 앱 

# 6단계 : Container View Controller

## 1. 구현해야 할 목록 

* First Scene에 네비게이션 컨트롤러 적용
* 노란색 창 '닫기' 버튼을 누르면 뒤로 가도록 기능 구현 

> 실행 화면 

<img width="300" alt="스크린샷 2020-02-04 오후 6 39 09" src="https://user-images.githubusercontent.com/38216027/73732603-cd5b0580-477d-11ea-85a4-4b5f005f7be4.png">

* 보라색 창 '닫기' 버튼을 누르면 뒤로 가도록 기능 구현

> 실행 화면 

<img width="300" alt="스크린샷 2020-02-04 오후 6 39 22" src="https://user-images.githubusercontent.com/38216027/73732677-f4193c00-477d-11ea-8276-c42b32bb41e7.png">


## 2. 학습거리 

* 내비게이션 컨트롤러 관련 메서드가 왜 push / pop 인지 학습한다.
<br>=> Stack에 현재 뷰 컨트롤러를 스택에 담고 다음 화면을 보여줘서 push이다. 
<br>=> Stack에 스택에 있던 화면을 빼내서 보여주기 때문에 pop이다. 