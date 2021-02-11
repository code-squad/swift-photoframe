# Photo Frame 🖼
## Step 1 - Tabbed 앱 (🎉 Feb 8)

- TabBar Controller가 View에 등장한다.
- 앱 실행 시, 콘솔 창에 `print(#file, #line, #function, #column)` 의 결과를 출력한다.

![step1](https://user-images.githubusercontent.com/72188416/107200595-40efbc80-6a3b-11eb-9d9c-22c2d22e145f.png)

<br>

## Step 2 - IBOutlet (🎉 Feb 9)

- FirstView에 사진 제목을 나타내는 `photoLabel`과 사진 설명을 보여주는 `photoDescription`이 나타난다.

![step2](https://user-images.githubusercontent.com/72188416/107310402-aee5c380-6acf-11eb-8b06-0d925d886c5d.png)

<br>

## Step 3 - IBAction (🎉 Feb 9)

- `다음` 버튼을 누르면(Touch Down) `photoLabel`의 색상과 배경이 변한다.
- `다음` 버튼 터치에서 벗어나면(Touch Up Inside) `photoLabel`이 원래대로 돌아간다.
- `여기도 있어요!🙋‍♀️` 버튼은 `다음` 버튼과 같은 액션을 수행한다.

![step3](https://user-images.githubusercontent.com/72188416/107320753-aa77d580-6ae4-11eb-85e7-16cec14b336d.gif)

<br>

## Step 4 - Scene과 Segue (🎉 Feb 9)

- `다음` 버튼을 누르면 다음 Scene으로 전환된다.
- 노랑 -> 주황 -> 보라 배경의 Scene이 순서대로 나오며, 마지막 Scene 전엔 아래로 Swipe하여 전 Scene으로 돌아갈 수 있다.
- 전 단계에 생성한 `여기도 있어요!🙋‍♀️` 버튼 삭제

![step 4](https://user-images.githubusercontent.com/72188416/107334365-f8e39f00-6af9-11eb-8399-9875102ce7fe.gif)

<br>

## Step 5 - ViewController 프로그래밍 (🎉 Feb 10)

- `❌` 버튼을 통해 각 씬을 닫고 이전 씬으로 돌아갈 수 있다.

![step 5](https://user-images.githubusercontent.com/72188416/107474458-b97a8880-6bb5-11eb-9571-0092da5c0250.gif)

- 씬 호출 변동이 있을 시 콘솔 창에 변화를 출력한다. 

![step 5-2](https://user-images.githubusercontent.com/72188416/107474447-b67f9800-6bb5-11eb-9782-f530ff014ae4.png)

<br>

## Step 6 - Container ViewController (🎉 Feb 10)

- `Navigation Controller`를 적용하여 이전 단계로 돌아가는 `Back` 버튼을 생성하였다.
- `❌` 버튼의 기능을 맨 처음 화면으로 돌아가는 것으로 변경하였다.



![step 6](https://user-images.githubusercontent.com/72188416/107481879-3d3a7200-6bc2-11eb-8fac-2121e8a706a6.gif)

<br>

## Step 7+ - Second Scene 화면 (🎉 Feb 11)

- Second Scene의 `🎲` 버튼을 통해 22장의 이미지를 랜덤으로 볼 수 있다.

<img src="https://user-images.githubusercontent.com/72188416/107610521-2577f200-6c85-11eb-97f0-e87d76fdcc57.gif" alt="step 7-1" style="zoom:60%;" />

- `🖼` 버튼을 통해 사진첩의 이미지를 불러와서 볼 수 있다.

<img src="https://user-images.githubusercontent.com/72188416/107610543-2f99f080-6c85-11eb-9f08-fcadc69df2b2.gif" alt="step 7-2" style="zoom:60%;" />





