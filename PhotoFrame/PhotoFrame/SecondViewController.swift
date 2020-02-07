//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 임승혁 on 2020/02/03.
//  Copyright © 2020 임승혁. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        self.photoImageView.contentMode = .scaleAspectFill
        self.photoImageView.image = UIImage(named: "\(randImg()).jpg")
    }
    
    @IBAction func selectButtonTouched(sender: UIButton){
        
    }
    
    func randImg() -> String {
        let imgNum = arc4random_uniform(22)+1
        let img = String(format: "%02d", imgNum)
        
        return img
    }
}

