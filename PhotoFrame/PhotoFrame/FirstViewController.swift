//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by user on 2021/02/09.
//

import UIKit

class FirstViewController: UIViewController{
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstSubLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.firstLabel.text = "BMO의 사진액자"
        self.firstLabel.textAlignment = .center
        self.firstLabel.backgroundColor = .lightGray
        let attributedString = NSMutableAttributedString(string: self.firstLabel.text!, attributes: [
            .font: UIFont.boldSystemFont(ofSize: 25),
            .foregroundColor: UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.8)
        ])
        attributedString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 35), range: (self.firstLabel.text! as NSString).range(of: "BMO"))
        attributedString.addAttribute(.foregroundColor, value: UIColor.black, range: (self.firstLabel.text! as NSString).range(of: "BMO"))
        self.firstLabel.attributedText = attributedString
        
        self.firstSubLabel.text = "Go Go"
        self.firstSubLabel.textColor = UIColor.init(displayP3Red: 1, green: 1, blue: 1, alpha: 1)
        self.firstSubLabel.backgroundColor = UIColor.init(displayP3Red: 0, green: 0, blue: 0, alpha: 0.8)
        self.firstSubLabel.textAlignment = .center
    }
    
    @IBAction func nextButtonTouchDown(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
}


