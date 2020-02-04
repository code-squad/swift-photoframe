//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 임승혁 on 2020/02/03.
//  Copyright © 2020 임승혁. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*
        print(#file)
        print(#line)
        print(#function)
        print(#column)
        */
        self.photoLabel.text = "Limwin의 사진액자"
        self.photoLabel.textColor = .white
        self.photoLabel.backgroundColor = .clear
        self.photoLabel.font = UIFont.boldSystemFont(ofSize: 40)
        
        self.firstDescription.text = "FirstViewController에서 실행중입니다."
        self.firstDescription.textColor = .white
        view.backgroundColor = .black
        
    }
}

