//
//  Tab1ViewController.swift
//  PhotoFrame
//
//  Created by 박정하 on 2021/02/09.
//

import UIKit

class Tab1ViewController : UIViewController{
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    let FontSIZE : CGFloat = 35
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changephotoLabelelement()
        changeDescriptionLabelelement()
    }
    
    func changephotoLabelelement() -> Void{
        self.photoLabel.text = "ZG의 사진액자"
        self.photoLabel.textColor = .systemBackground
        self.photoLabel.backgroundColor = .systemRed
        self.photoLabel.alpha = 0.3
        self.photoLabel.font = .systemFont(ofSize: 52)
    }
    
    func changeDescriptionLabelelement() -> Void{
        self.firstDescription.text = "로드 됨 퍼스트 뷰 컨트롤러에 의해"
        self.firstDescription.textColor = .systemRed
        self.firstDescription.backgroundColor = .label
        self.firstDescription.alpha = 0.5
        self.firstDescription.font = .systemFont(ofSize: 15)
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        self.photoLabel.textColor = .blue
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
    }
    
}
