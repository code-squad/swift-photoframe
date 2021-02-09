# Photo Frame 🖼
## Step 1 - Tabbed 앱 (🎉 Feb 8, 21:57)

- TabBar Controller가 View에 등장한다.
- 앱 실행 시, 콘솔 창에 `print(#file, #line, #function, #column)` 의 결과를 출력한다.

![step1](https://user-images.githubusercontent.com/72188416/107200595-40efbc80-6a3b-11eb-9d9c-22c2d22e145f.png)

<br>

## Step 2 - IBOutlet (🎉 Feb 9, 12:41)

- FirstView에 사진 제목을 나타내는 `photoLabel`과 사진 설명을 보여주는 `photoDescription`이 나타난다.

![step2](https://user-images.githubusercontent.com/72188416/107310402-aee5c380-6acf-11eb-8b06-0d925d886c5d.png)

<br>

## Step 3 - IBAction

- `다음` 버튼을 누르면(Touch Down) `photoLabel`의 색상과 배경이 변한다.
- `다음` 버튼 터치에서 벗어나면(Touch Up Inside) `photoLabel`이 원래대로 돌아간다.
- `여기도 있어요!🙋‍♀️` 버튼은 `다음` 버튼과 같은 액션을 수행한다.

![step3](https://user-images.githubusercontent.com/72188416/107320753-aa77d580-6ae4-11eb-85e7-16cec14b336d.gif)

