//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Elena on 11/03/2019.
//  Copyright © 2019 elena. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: TitleLabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.textColor = .blue
        self.photoLabel.font = UIFont.systemFont(ofSize: 50)
        self.photoLabel.alpha = 0.9
        self.photoLabel.text = "Cony의 사진액자"
        
        
        self.firstDescription.textColor = .black
        self.firstDescription.backgroundColor = .yellow
        self.firstDescription.font = UIFont.systemFont(ofSize: 15)
        self.firstDescription.alpha = 0.6
        self.firstDescription.text = "Cony"
        
        print(#file, #line, #function, #column)
    }

    //Button을 누르면 TitleLabel의 모양이 변경하는 함수
    @IBAction func changeTitleLabelBtn(_ sender: Any) {
        self.photoLabel.setTitleLabelStyle()
    }
    
    //storyboard를 이용하지 않고, 코드상으로 연결하는 방법
    @IBAction func nextEmeraldViewBtn(sender: UIButton) {
        //withIdentifier : viewController의 Identifier 이고, 뒤의 EmeraldView는 class 이름
        let storyboardFind = self.storyboard?.instantiateViewController(withIdentifier: "emeraldView")as! EmeraldView
        present(storyboardFind,animated: true , completion: nil)
    }
}

