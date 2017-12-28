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
        // 속성이 지정된 문자열을 라벨에 적용
        let attributedString = NSMutableAttributedString(string: "Min's 사진액자")
        makeDefaultText(attributedString)
        // 부제목 텍스트 속성 변경
        firstDescription.text = "Developed by min, undervine"
        firstDescription.textColor = UIColor.darkGray
    }

    @IBAction func nextButtonTouched(_ sender: UIButton) {
        // 기존 텍스트의 속성 받아옴.
        guard let photoLabelAttributeText = photoLabel.attributedText else { return }
        let attributedString = NSMutableAttributedString(attributedString: photoLabelAttributeText)
        // 제목 텍스트 생성 및 폰트 적용
        let nameRange = NSRange(location: 0, length: 5)
        let defaultFont = modifyFont(attributedString, nameRange, "Chalkduster", 35.0)
        modifyBackgroundColor(attributedString, nameRange, to: UIColor.yellow)
        modifyFontSize(attributedString, nameRange, defaultFont, to: 33.0)
        photoLabel.attributedText = attributedString
    }

    private func makeDefaultText(_ attributedString: NSMutableAttributedString) {
        let nameRange = NSRange(location: 0, length: 5)
        let restRange = NSRange(location: 6, length: 4)
        modifyBackgroundColor(attributedString, nameRange, to: UIColor.gray)
        modifyTextColor(attributedString, nameRange, to: UIColor.white)
        modifyForegroundColor(attributedString, restRange, to: UIColor.gray)
        photoLabel.attributedText = attributedString
    }

    private func modifyFont(_ attributedString: NSMutableAttributedString, _ range: NSRange,
                            _ fontName: String, _ fontSize: CGFloat) -> UIFont? {
        let defaultFont = UIFont(name: fontName, size: fontSize)
        let fontAttribute = [NSAttributedStringKey.font: defaultFont]
        attributedString.addAttributes(fontAttribute, range: range)
        return defaultFont
    }

    private func modifyFontSize(_ attributedString: NSMutableAttributedString, _ range: NSRange,
                                _ font: UIFont?, to size: CGFloat) {
        // 제목 텍스트 일부분의 크기 조절
        let sizeAttribute = [NSAttributedStringKey.font: font?.withSize(size)]
        attributedString.addAttributes(sizeAttribute, range: range)
    }

    // 제목 텍스트 일부분의 배경색상 적용
    private func modifyBackgroundColor(_ attributedString: NSMutableAttributedString, _ range: NSRange,
                                       to color: UIColor) {
        let backgroundAttribute = [NSAttributedStringKey.backgroundColor: color]
        attributedString.addAttributes(backgroundAttribute, range: range)
    }

    private func modifyForegroundColor(_ attributedString: NSMutableAttributedString, _ range: NSRange,
                                       to color: UIColor) {
        let foregroundAttribute = [NSAttributedStringKey.foregroundColor: color]
        attributedString.addAttributes(foregroundAttribute, range: range)
    }

    private func modifyTextColor(_ attributedString: NSMutableAttributedString, _ range: NSRange, to color: UIColor) {
        let backgroundAttribute = [NSAttributedStringKey.foregroundColor: color]
        attributedString.addAttributes(backgroundAttribute, range: range)
    }

}
