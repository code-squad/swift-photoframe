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
    @IBOutlet weak var photoTitle: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        
        setup(label: photoTitle, setter: TitleLabel.self)
        setup(label: photoDescription, setter: DescriptionLabel.self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setup(label: UILabel, setter: LabelSettable.Type) {
        label.text = setter.text
        label.textColor = setter.textColor
        label.alpha = setter.alpha
        label.font = setter.font
        label.backgroundColor = setter.backgroundColor
    }
    
    // MARK: IBAction
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoTitle.textColor = UIColor.red
        self.photoTitle.backgroundColor = UIColor.yellow
        self.photoTitle.alpha = 0.5
    }
}

protocol LabelSettable {
    static var text: String { get }
    static var textColor: UIColor { get }
    static var alpha: CGFloat { get }
    static var font: UIFont! { get }
    static var backgroundColor: UIColor { get }
}

extension FirstViewController {
    
    struct TitleLabel: LabelSettable {
        static let text: String = "Mason의 사진액자"
        static let textColor: UIColor = UIColor.blue
        static let alpha: CGFloat = 0.7
        static let font: UIFont! = UIFont(name: "Zapfino", size: 30)
        static let backgroundColor: UIColor = UIColor(red: 0, green: 0, blue: 1.0, alpha: 0.3)
    }
    
    struct DescriptionLabel: LabelSettable {
        static let text: String = "위 작품은 Mason의 사진액자 입니다."
        static let textColor: UIColor = UIColor.red
        static let alpha: CGFloat = 0.5
        static let font: UIFont! = UIFont(name: "Zapfino", size: 20)
        static let backgroundColor: UIColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
    }
}
