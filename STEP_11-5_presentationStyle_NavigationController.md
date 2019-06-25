STEP 11-5

# Presentation Style과 Navigation Controller  

## Presentation Style

- FullScreen 
- UIModalPresentationFullScreen (모달 방식으로 풀 스크린으로 띄움)
- UIModalPresentationPageSheet  (모달 & Page시트 형식 - 모달로 띄워서 세로화면을 다 씀)
- UIModalPresentationFormSheet (모달 & Form시트 형식 - 전체 root/master view에서 가운데 사각형으로 모달 띄움)



## 네비게이션 컨트롤러

- 여러 컨트롤러 가운데 data를 전달하거나 특정 컨트롤러로의 전환을 지시하는 컨트롤러를 의미한다.
- 이전 스텝에서 세그웨이를 통한 화면 전환시 수동으로 [뒤로] 버튼을 눌러서 이전 view로 돌아가는 작업을 하였는데,
- **네비게이션 컨트롤러를 이용하면 이러한 작업을 button과 view controller 간의 drag & drop 시 segue에서 자동으로 지정해준다.** (뒤로가기 버튼이 저절로 생기는 것은 덤)
  - FirstView ViewController를 Navigator Controller로 지정하는 작업만 우선적으로 수행하면 된다.
  - 더욱이, Custom segue 작업없이도 left->right / left <- right 방향의 animation을 기본적으로 제공한다.
- [튜토리얼 영상](https://www.youtube.com/watch?v=unaf817uNtQ)

