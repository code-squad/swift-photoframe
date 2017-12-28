//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 심 승민 on 2017. 12. 27..
//  Copyright © 2017년 심 승민. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // 제목 텍스트 생성 및 폰트 적용
        let defaultFont = UIFont(name: "Chalkduster", size: 35.0)
        let fontAttribute = [NSAttributedStringKey.font: defaultFont]
        let attributedString = NSMutableAttributedString(string: "Min's 사진액자", attributes: fontAttribute)
        // 제목 텍스트 일부분의 크기 조절
        let sizeAttribute = [NSAttributedStringKey.font: defaultFont?.withSize(33.0)]
        let sizeRange = NSRange(location: 6, length: 4)
        attributedString.addAttributes(sizeAttribute, range: sizeRange)
        // 제목 텍스트 일부분의 배경색상 적용
        let backgroundAttribute = [NSAttributedStringKey.backgroundColor: UIColor.yellow]
        let backgroundRange = NSRange(location: 0, length: 5)
        attributedString.addAttributes(backgroundAttribute, range: backgroundRange)
        // 속성이 지정된 문자열을 라벨에 적용
        photoLabel.attributedText = attributedString
        // 부제목 텍스트 속성 변경
        firstDescription.text = "일상 속으로"
        firstDescription.alpha = 0.5
        firstDescription.font = firstDescription.font.withSize(20.0)
    }

    @IBAction func nextButtonTouched(_ sender: UIButton) {
        // 제목 텍스트 속성 변경 - 배경색상
        guard let photoLabelAttributeText = photoLabel.attributedText else { return }
        let photoLabelString = NSMutableAttributedString(attributedString: photoLabelAttributeText)
        let backgroundAttribute = [
            NSAttributedStringKey.backgroundColor: UIColor.gray,
            NSAttributedStringKey.foregroundColor: UIColor.white
        ]
        let backgroundRange = NSRange(location: 0, length: 5)
        let foregroundAttribute = [NSAttributedStringKey.foregroundColor: UIColor.gray]
        let foregroundRange = NSRange.init(location: 6, length: 4)
        photoLabelString.addAttributes(foregroundAttribute, range: foregroundRange)
        photoLabelString.addAttributes(backgroundAttribute, range: backgroundRange)
        photoLabel.attributedText = photoLabelString
        // 부제목 텍스트 속성 변경
        firstDescription.textColor = UIColor.darkGray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
