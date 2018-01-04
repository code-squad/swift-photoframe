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
        let defaultFont = modifyFont(attributedString, FrameInfo.nameRange,
                                     FrameInfo.fontName, CGFloat(FrameInfo.fontSize))
        modifyFontSize(attributedString, FrameInfo.nameRange, defaultFont, to: 33.0)
//        makeGrayTitle(attributedString)
        makeYellowTitle(attributedString)
        photoLabel.attributedText = attributedString
        // 부제목 텍스트 속성 변경
        firstDescription.text = FrameInfo.subtitle
        firstDescription.textColor = UIColor.darkGray
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    // 세그 없이 다음 화면 이동.
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        // 기존 텍스트의 속성 받아옴.
        guard let photoLabelAttributeText = photoLabel.attributedText else { return }
        let attributedString = NSMutableAttributedString(attributedString: photoLabelAttributeText)
        makeYellowTitle(attributedString)
        photoLabel.attributedText = attributedString
        // 다음 화면으로 이동.
        if let bvc = self.storyboard?.instantiateViewController(withIdentifier: "BVC") {
            self.navigationController?.pushViewController(bvc, animated: true)
//            self.present(bvc, animated: true, completion: nil)
        }
    }

}

extension FirstViewController {
    private func makeGrayTitle(_ attributedString: NSMutableAttributedString) {
        modifyTextColor(attributedString, FrameInfo.nameRange, to: UIColor.white)
        modifyTextColor(attributedString, FrameInfo.restRange, to: UIColor.gray)
        modifyBackgroundColor(attributedString, FrameInfo.nameRange, to: UIColor.gray)
    }

    private func makeYellowTitle(_ attributedString: NSMutableAttributedString) {
        // 제목 텍스트 생성 및 폰트 적용
        modifyTextColor(attributedString, FrameInfo.nameRange, to: UIColor.white)
        modifyTextColor(attributedString, FrameInfo.restRange, to: UIColor.yellow)
        modifyBackgroundColor(attributedString, FrameInfo.nameRange, to: UIColor.yellow)
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
        let attribute = [NSAttributedStringKey.font: font?.withSize(size)]
        attributedString.addAttributes(attribute, range: range)
    }

    // 제목 텍스트 일부분의 배경색상 적용
    private func modifyBackgroundColor(_ attributedString: NSMutableAttributedString, _ range: NSRange,
                                       to color: UIColor) {
        let attribute = [NSAttributedStringKey.backgroundColor: color]
        attributedString.addAttributes(attribute, range: range)
    }

    private func modifyTextColor(_ attributedString: NSMutableAttributedString, _ range: NSRange, to color: UIColor) {
        let attribute = [NSAttributedStringKey.foregroundColor: color]
        attributedString.addAttributes(attribute, range: range)
    }
}
