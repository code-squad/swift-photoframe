//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by delma on 03/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        setUpUI()
    }

    func setUpUI(){
        self.firstLabel.text = "delma의 사진액자"
        self.firstLabel.textColor = .blue
        self.firstLabel.font = .boldSystemFont(ofSize: 50.0)
        
        self.firstDescription.text = "사진 액자 설명"
        self.firstDescription.textColor = .green
    }

}

