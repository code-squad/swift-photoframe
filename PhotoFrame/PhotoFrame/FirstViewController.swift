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
        self.photoLabel.text = LabelText.title
        self.photoLabel.textColor = LabelTextColor.title
        self.photoLabel.backgroundColor = LabelBackgroundColor.title
        self.photoLabel.alpha = LabelAlpha.title
        self.photoLabel.font = LabelFont.title
    }
    
    func setPhotoDescription() {
        self.photoDescription.text = LabelText.description
        self.photoDescription.textColor = LabelTextColor.description
        self.photoDescription.backgroundColor = LabelBackgroundColor.description
        self.photoDescription.alpha = LabelAlpha.description
        self.photoDescription.font = LabelFont.description
    }
}

extension FirstViewController {
    
    enum LabelText {
        static let title: String = "Mason의 사진액자"
        static let description: String = "위 작품은 Mason의 사진액자 입니다."
    }
    
    enum LabelTextColor {
        static let title: UIColor = UIColor.blue
        static let description: UIColor = UIColor.red
    }
    
    enum LabelAlpha {
        static let title: CGFloat = 0.7
        static let description: CGFloat = 0.5
    }
    
    enum LabelFont {
        static let title: UIFont! = UIFont(name: "Zapfino", size: 30)
        static let description: UIFont! = UIFont(name: "Zapfino", size: 20)
    }
    
    enum LabelBackgroundColor {
        static let title: UIColor = UIColor(red: 0, green: 0, blue: 1.0, alpha: 0.3)
        static let description: UIColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
    }
}
