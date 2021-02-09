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
 
    }
    
}


