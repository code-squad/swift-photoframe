# Step 1. Tabbed 앱
 - 첫 깃 연동 연습
 - ViewController를 재 설정해서 탭바로 만들기.

# Step 2&3. Label 과 Btn 으로 Outlet, Action 관리 
#### 2021/03/10 11 : 28AM

### IBOutlet

<img src= "https://user-images.githubusercontent.com/52390975/110567576-18232a00-8195-11eb-91da-fab8570238ee.png" width="200">


### IBAction

<img src= "https://user-images.githubusercontent.com/52390975/110567592-1d807480-8195-11eb-803b-69794d8611d3.png" width="200">

### Outlet은 출력의 의미 , Action은 컨트롤러의 의미로 이해했다.

# Step 4. Scene과 Segue
#### 2021/03/10 2 : 00PM

### 2개의 씬을 넣어서 Segue를 이용하여 배경색을 바꾸는 기술을 적용함.


<img src="https://user-images.githubusercontent.com/52390975/110580940-f59d0b00-81ac-11eb-8472-d69fde39d362.gif" width="200">

# Step 5. ViewController Programming
#### 2021/03/10 3 : 30PM

### Cocoa Touch Class를 이용해서 새로운 UIViewController 를 만들어 첫번째 Scene의 뷰를 컨트롤 한다.
### 이 때 이용한 view(DidLoad, WillAppear, DidAppear, DidDisappear)의 Cycle을 확인한다.
### 이 씬이 불러질 때 순서대로 viewDidLoad, viewWillAppear, 그리고  viewDidAppear 로 생겨진다.
### viewDidDisappear는 segue로 연결된 다음 Scene으로 갈 때 나타나지 않고 exit 버튼으로 dismiss함수가 호출 될 때 생겨난다.

<img src="https://user-images.githubusercontent.com/52390975/110582779-0dc25980-81b0-11eb-8445-2640fcda2302.png" width="600">

```
/Users/jinseopark/Documents/GitHub/swift-photoframe/PhotoFrame/PhotoFrame/YellowViewController.swift 17 viewDidLoad() 40
/Users/jinseopark/Documents/GitHub/swift-photoframe/PhotoFrame/PhotoFrame/YellowViewController.swift 26 viewWillAppear(_:) 40
/Users/jinseopark/Documents/GitHub/swift-photoframe/PhotoFrame/PhotoFrame/YellowViewController.swift 22 viewDidAppear(_:) 40

/Users/jinseopark/Documents/GitHub/swift-photoframe/PhotoFrame/PhotoFrame/YellowViewController.swift 30 viewDidDisappear(_:) 40
```


### 2번째에서 3번째 view로 갈 때 코드와 버튼 Action을 이용해서 3번째 화면을 가도록 구현.

``` swift

@IBAction func nxtSceneBtnTouched(_ sender: Any) {
    
    guard let newVC = self.storyboard?.instantiateViewController(identifier: "blueViewController") else {
        return
    }
    
    self.present(newVC, animated: true)       
}

```

# Step 6. Container View Controller

#### 2021/03/10 4:30PM

- 네비게이션 동작을 구현하였고, 세그웨이와 다른 점은 새로운 View가 밑에서 아래가 아닌 좌에서 우로 간다는 점을 파악했다.
- 세그웨이와 다른 점은 새로운 뷰이기 때문에 기존의 view에 viewDidDisappear가 작동된다는 점이다.
- 시각적인 차이를 보기 위해서 버튼을 두가지 종류(세그웨이, 내비게이션)를 만들어서 구현하였다.

<img src = "https://user-images.githubusercontent.com/52390975/110591617-a2cb4f80-81bc-11eb-8e22-4aca0c1c1a11.gif" width="200">


- push와 Pop을 이해하기 위해 다른 view를 push를 이용해 코드 작업

```swift

@IBAction func nxtSceneNaviBtnTouched(_ sender: Any) {
    guard let newVC = self.storyboard?.instantiateViewController(identifier: "BlueViewController") else {
        return
    }
    
    self.navigationController?.pushViewController(newVC, animated: true)
    
}

```

# Step 7. Second Scene

#### 2021/03/10 6:10PM

- Img를 다운받아서 UIImageView에 보여주는 것이 목표
- viewDidLoad()에서 부터 이미지를 보여주고 '다음' 버튼을 누를때마다 랜덤으로 이미지를 보여준다.
- 이때 이미지는 ImageView에 맞게 scaleToFill을 해준다.

```swift
@IBAction func changeImgBtnTouched(_ sender: Any) {
    let randInt = Int.random(in: 1...22)
    
    //Path가 Stirng이기에 10 이하 숫자(n)는 0n.jpg 이며 정확한 str를 위해 if-else 구문 사용
    if randInt < 10 {
        self.photoImgView.image =
            UIImage(named: "0"+String(randInt)+".jpg")
    }else {
        self.photoImgView.image =
            UIImage(named: String(randInt)+".jpg")
    }
    

    /* contentMode의 scaleToFill을 이용해서 사이즈를 조정한다.*/
    self.photoImgView.contentMode = .scaleToFill
    

}

```

<img src = "https://user-images.githubusercontent.com/52390975/110604304-44f23400-81cb-11eb-9d98-19b7d6870561.gif" width="200">


# Step 8. 추가 학습

- 델리게이트에 대한 학습

- 정의 : 다른 객체가 해주는 일을 대신한다.(스스로 할 수도 있다)

- 1. 다른 객체 변화에 대응하거나 2. 다른 객체 행동에 변화를 준다.

- 두 객체가 힘을 합치어서 문제를 해결

- 액자를 다운받아 AutoLayout을 이용하여 사진외부에 걸치게 되었다.

- 이때 중간에 알파값이 있는지 겹쳐서 사진이 가려지는 일은 없었다.

- 스토리보드에 스택순서? 대로 겹쳐지는것이 다르긴 한데 확실히는 모르겠다.

<div>

<img src = "https://user-images.githubusercontent.com/52390975/110750921-8f84b680-8286-11eb-8ab7-0396c3404d11.gif" width="200">

<img src = "https://user-images.githubusercontent.com/52390975/110750951-96132e00-8286-11eb-8142-b093b4e13858.gif" width="200">

<img src = "https://user-images.githubusercontent.com/52390975/110750959-97445b00-8286-11eb-8d6d-f04765453f1a.gif" width="200">

</div>

# ============================


# 진행 방법

- 포토프레임에 대한 요구사항을 파악한다.
- 요구사항에 대한 구현을 완료한 후 자신의 github 아이디에 해당하는 브랜치에 Pull Request(이하 PR)를 통해 코드 리뷰 요청을 한다.
- 코드 리뷰 피드백에 대한 개선 작업을 하고 다시 PUSH한다.
- 모든 피드백을 완료하면 다음 단계를 도전하고 앞의 과정을 반복한다.

# 코드 리뷰 과정
> 저장소 브랜치에 자신의 github 아이디에 해당하는 브랜치가 존재해야 한다.
>
> 자신의 github 아이디에 해당하는 브랜치가 있는지 확인한다.

1. 자신의 github 아이디에 해당하는 브랜치가 없는 경우 브랜치 생성 요청 채널을 통해 브랜치 생성을 요청한다.
프로젝트를 자신의 계정으로 fork한다. 저장소 우측 상단의 fork 버튼을 활용한다.

2. fork한 프로젝트를 자신의 컴퓨터로 clone한다.
```
git clone https://github.com/{본인_아이디}/{저장소 아이디}
ex) https://github.com/godrm/swift-photoframe
```

3. clone한 프로젝트 이동
```
cd {저장소 아이디}
ex) cd swift-photoframe
```

4. 본인 아이디로 브랜치를 만들기 위한 checkout
```
git checkout -t origin/본인_아이디
ex) git checkout -t origin/godrm
```

5. 기능 구현을 위한 브랜치 생성 (연속번호를 붙여나간다)
```
git checkout -b 브랜치이름
ex) git checkout -b photoframe-step1
```

6. commit
```
git status //확인
git rm 파일명 //삭제된 파일
git add 파일명(or * 모두) // 추가/변경 파일
git commit -m "메세지" // 커밋
```

7. 본인 원격 저장소에 올리기
```
git push --set-upstream origin 브랜치이름
ex) git push --set-upstream origin photoframe-step1
```

8. pull request
	- pull request는 github 서비스에서 진행할 수 있다.
	- pull request는 original 저장소의 브랜치(자신의 github 아이디)와 앞 단계에서 생성한 브랜치 이름을 기준으로 한다.

	```
	ex) code-squad/swift-photoframe godrm 브랜치 기준 => godrm/swift-photoframe store-step1
	```
	
9. code review 및 push
	- pull request를 통해 피드백을 받는다.
	- 코드 리뷰 피드백에 대한 개선 작업을 하고 다시 PUSH한다.

10. 기본(upstream) 브랜치 전환 및 base 저장소 추가하기(최초 시작하기 단계 한번만 하면 됨)

	```
	git checkout 본인_아이디
	git remote add upstream base_저장소_url

	ex) git checkout godrm
	ex) git remote add upstream https://github.com/code-squad/swift-photoframe.git
	```

	- 위와 같이 base 저장소 추가한 후 remote 브랜치 목록을 보면 4개가 보여야 한다.

	```
	git remote -v
	```

11. 기본 base 저장소와 sync하기 (PR 보낸 내용을 자신의 기본 저장소와 합치기)

	```
	git fetch upstream
	git rebase upstream/본인_아이디
	ex) git rebase upstream/godrm
	```

12. 다음 미션을 해결할 경우 [5단계 브랜치 생성]부터 다시 진행

## 동영상을 통한 코드 리뷰() 를 통해 참고 가능

- [fork하여 코드 리뷰하기](https://www.youtube.com/watch?v=ZSZoaG0PqLg) 
- [PR 보내고 다시 PR보낼 때 유의 사항](https://www.youtube.com/watch?v=CbLNbCUsh5c&feature=youtu.be)

## 실습 중 모든 질문은 슬랙 채널에서...
