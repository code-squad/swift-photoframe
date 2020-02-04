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
        self.photoLabel.textColor = UIColor.white
        //아니면 UIFont에서 name에 bold체를 가진 폰트를 써주면서 설정하기도 가능.
        self.photoLabel.font = UIFont.boldSystemFont(ofSize: 40.0)
        //기본 background가 white으로 되어있었음
        //그래서 얘만 .clear해줘야지 보였던것.
        //self.photoLabel.backgroundColor = .clear
        
        self.firstDescription.text = "FirstView에서 실행중입니다."
        self.firstDescription.textColor = UIColor.white
        self.firstDescription.font = UIFont(name: "Helvetica Neue", size: 20)
        
        self.view.backgroundColor = UIColor.black
    }


}

