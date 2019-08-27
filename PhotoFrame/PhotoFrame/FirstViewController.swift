//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by JieunKim on 12/08/2019.
//  Copyright © 2019 zieunv. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = "Ogi의 사진액자"
        self.firstDescription.text = "너무 신기하쥬?"
        firstLabel.textColor = .blue
        firstDescription.backgroundColor = .yellow

        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }


}

