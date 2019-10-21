//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 이진영 on 23/09/2019.
//  Copyright © 2019 Kroist. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstLabel.text = "bean의 사진 액자"
        self.firstLabel.textColor = .blue
        
        self.firstDescription.text = "사진 액자 입니다."
        self.firstDescription.font = UIFont.systemFont(ofSize: 50)
    }


}

