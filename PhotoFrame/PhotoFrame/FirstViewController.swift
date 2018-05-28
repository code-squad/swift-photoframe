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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: IBAction
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.red
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
    }
}

extension FirstViewController {
    
    struct TitleLabel {
        static let text: String = "Mason의 사진액자"
        static let textColor: UIColor = UIColor.blue
        static let alpha: CGFloat = 0.7
        static let font: UIFont! = UIFont(name: "Zapfino", size: 30)
        static let backgroundColor: UIColor = UIColor(red: 0, green: 0, blue: 1.0, alpha: 0.3)
    }
    
    struct DescriptionLabel {
        static let text: String = "위 작품은 Mason의 사진액자 입니다."
        static let textColor: UIColor = UIColor.red
        static let alpha: CGFloat = 0.5
        static let font: UIFont! = UIFont(name: "Zapfino", size: 20)
        static let backgroundColor: UIColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
    }
    
    enum LabelSetter {
        case title
        case description
        
        var text: String {
            switch self {
            case .title:
                return "Mason의 사진액자"
            case .description:
                return "위 작품은 Mason의 사진액자 입니다."
            }
        }
        
        var textColor: UIColor {
            switch self {
            case .title:
                return UIColor.blue
            case .description:
                return UIColor.red
            }
        }
        
        var alpha: CGFloat {
            switch self {
            case .title:
                return 0.7
            case .description:
                return 0.5
            }
        }
        
        var font: UIFont! {
            switch self {
            case .title:
                return UIFont(name: "Zapfino", size: 30)
            case .description:
                return UIFont(name: "Zapfino", size: 20)
            }
        }
        
        var backgroundColor: UIColor {
            switch self {
            case .title:
                return UIColor(red: 0, green: 0, blue: 1.0, alpha: 0.3)
            default:
                return UIColor(red: 1, green: 0, blue: 0, alpha: 0.3)
            }
        }
    }
}
