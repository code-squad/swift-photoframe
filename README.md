

# photoframe-step2 - IBOutlet



- 첫번째 view에 연결할 `FirstViewController` 생성
- `photoLabel`, `firstDescription` IBOutlet 연결
- 두 label text, textColor, backgroundColor, alpha, fontsize 변경



완료시간 02/08 10:55



#### UILabel의 속성들

- `numberOfLines` : Label 안의 텍스트가 몇개의 줄로 표현이 될지(그 줄을 넘어가면 좌 혹은 우로 짤림)

- ```swift
  // 부분 폰트 사이즈 바꾸는 법
  let fontSize = UIFont.boldSystemFont(ofSize: 30)
  let attributedStr = NSMutableAttributedString(string: self.firstDescription.text ?? "")
  attributedStr.addAttribute(.font, value: fontSize, range: (firstDescription.text! as
  NSString).range(of: "SOON"))
  self.firstDescription.attributedText = attributedStr
  
  // 부분 글자 색 바꾸는 방법
  let attributedString = NSMutableAttributedString(string: firstDescription.text ?? "")
  attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: (firstDescription.text! as NSString).range(of:"SOON"))
  firstDescription.attributedText = attributedString
  ```

![스크린샷 2021-02-08 오후 9 46 56](https://user-images.githubusercontent.com/62657991/107221679-49ee8700-6a57-11eb-8321-c9ee75c8a73d.png)
![스크린샷 2021-02-08 오후 9 46 58](https://user-images.githubusercontent.com/62657991/107221695-4eb33b00-6a57-11eb-9431-29efa4e01e50.png)
![스크린샷 2021-02-08 오후 9 47 09](https://user-images.githubusercontent.com/62657991/107221699-4eb33b00-6a57-11eb-9f6c-57f653cd15af.png)