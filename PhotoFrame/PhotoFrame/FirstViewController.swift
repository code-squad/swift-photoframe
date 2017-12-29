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
        let attributedString = NSMutableAttributedString(string: FrameInfo.title)
        makeDefaultText(attributedString)
        // 부제목 텍스트 속성 변경
        firstDescription.text = FrameInfo.subtitle
        firstDescription.textColor = UIColor.darkGray
    }

    @IBAction func nextButtonTouched(_ sender: UIButton) {
        // 기존 텍스트의 속성 받아옴.
        guard let photoLabelAttributeText = photoLabel.attributedText else { return }
        let attributedString = NSMutableAttributedString(attributedString: photoLabelAttributeText)
        // 제목 텍스트 생성 및 폰트 적용
        modifyBackgroundColor(attributedString, FrameInfo.nameRange, to: UIColor.yellow)
        modifyTextColor(attributedString, FrameInfo.restRange, to: UIColor.yellow)
        photoLabel.attributedText = attributedString
    }

}

extension FirstViewController {
    private func makeDefaultText(_ attributedString: NSMutableAttributedString) {
        let defaultFont = modifyFont(attributedString, FrameInfo.nameRange, FrameInfo.fontName, CGFloat(FrameInfo.fontSize))
        modifyFontSize(attributedString, FrameInfo.nameRange, defaultFont, to: 33.0)
        modifyBackgroundColor(attributedString, FrameInfo.nameRange, to: UIColor.gray)
        modifyTextColor(attributedString, FrameInfo.nameRange, to: UIColor.white)
        modifyForegroundColor(attributedString, FrameInfo.restRange, to: UIColor.gray)
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
