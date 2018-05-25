//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by moon on 2018. 5. 24..
//  Copyright © 2018년 moon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!

    private let TITLE: String = "Mason의 사진액자"
    private let DESCRIPTION: String = "위 작품은 Mason의 사진액자 입니다."
    private let photoLabelAlpha: CGFloat = 0.7
    private let photoDescriptionAlpha: CGFloat = 0.5
    private let photoLabelFont: UIFont! = UIFont(name: "Zapfino", size: 30)
    private let photoDescriptionFontSize: CGFloat = 20
    private let photoLabelBackgroundColor: UIColor = UIColor(red: 0, green: 0, blue: 1.0, alpha: 0.3)
    private let photoDescriptionBackgroundColor: UIColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        setPhotoLabel()
        setPhotoDescription()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setPhotoLabel() {
        self.photoLabel.text = self.TITLE
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = self.photoLabelBackgroundColor
        self.photoLabel.alpha = self.photoLabelAlpha
        self.photoLabel.font = self.photoLabelFont
    }
    
    func setPhotoDescription() {
        self.photoDescription.text = self.DESCRIPTION
        self.photoDescription.textColor = UIColor.red
        self.photoDescription.backgroundColor = self.photoDescriptionBackgroundColor
        self.photoDescription.alpha = self.photoDescriptionAlpha
        self.photoDescription.font = self.photoDescription.font.withSize(self.photoDescriptionFontSize)
    }
}

