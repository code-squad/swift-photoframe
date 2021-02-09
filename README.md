# Misson1 사진액자 만들기

## 1.1 Tabbar Controller 만들기

### 결과
<img width="523" alt="스크린샷 2021-02-08 오후 6 31 28" src="https://user-images.githubusercontent.com/69951890/107201552-7a74f780-6a3c-11eb-8910-861108e2fcc8.png">

## 1.2 UILabel Properties 변경하기 (IBOutlet)

### 결과
<img width="357" alt="스크린샷 2021-02-08 오후 10 24 10" src="https://user-images.githubusercontent.com/69951890/107225633-60e3a800-6a5c-11eb-8d65-6fc1dbcf7294.png">

## 1.3 UIButton (IBAction)
IBAction : Event가 일어나는 경우 호출되는 Action을 정의 (Method)
IBOutlet : 특정한 값에 접근하기 위한 변수

### 결과
<img width="652" alt="스크린샷 2021-02-08 오후 10 55 57" src="https://user-images.githubusercontent.com/69951890/107229182-d2255a00-6a60-11eb-8df7-4d063674ebb9.png">

## 1.4 1.5 View Controller

### 결과
<img width="1070" alt="스크린샷 2021-02-09 오후 4 18 08" src="https://user-images.githubusercontent.com/69951890/107328664-6a1f5400-6af2-11eb-9fa4-094dc83393f7.png">

<pre>
<code>
// 화면전환
@IBAction func wind(_ sender: Any) {
    self.performSegue(withIdentifier: "ManualWind", sender: self)
}
// unwind 화면닫기
@IBAction func unWind(_ segue: UIStoryboardSegue) {
    
}
</code>
</pre>


## 1.6 Container View Controller

### 결과
<img width="719" alt="스크린샷 2021-02-09 오후 7 43 09" src="https://user-images.githubusercontent.com/69951890/107352349-13744300-6b0f-11eb-83ea-4731a4ea42c0.png">

<img width="722" alt="스크린샷 2021-02-09 오후 7 45 03" src="https://user-images.githubusercontent.com/69951890/107352542-50403a00-6b0f-11eb-8b16-a90bda8b141f.png">
