//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by moon on 2018. 5. 24..
//  Copyright © 2018년 moon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: IBOutlet
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        
        setup(label: photoLabel, setter: TitleLabel())
        setup(label: photoDescription, setter: DescriptionLabel())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setup(label: UILabel, setter: LabelSettable) {
        label.text = setter.text
        label.textColor = setter.textColor
        label.backgroundColor = setter.backgroundColor
        label.alpha = setter.alpha
        label.font = setter.font
    }
    
    // MARK: IBAction
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.red
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
    }
}

protocol LabelSettable {
    var text: String { get }
    var textColor: UIColor { get }
    var alpha: CGFloat { get }
    var font: UIFont! { get }
    var backgroundColor: UIColor { get }
}

extension FirstViewController {
    
    struct TitleLabel: LabelSettable {
        let text: String = "Mason의 사진액자"
        let textColor: UIColor = UIColor.blue
        let alpha: CGFloat = 0.7
        let font: UIFont! = UIFont(name: "Zapfino", size: 30)
        let backgroundColor: UIColor = UIColor(red: 0, green: 0, blue: 1.0, alpha: 0.3)
    }
    
    struct DescriptionLabel: LabelSettable {
        let text: String = "위 작품은 Mason의 사진액자 입니다."
        let textColor: UIColor = UIColor.red
        let alpha: CGFloat = 0.5
        let font: UIFont! = UIFont(name: "Zapfino", size: 20)
        let backgroundColor: UIColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
    }
}
