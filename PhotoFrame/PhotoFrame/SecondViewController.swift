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

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.contentMode = .scaleAspectFill
        self.photoImageView.image = UIImage(named: "\(randImg()).jpg")
    }
    
    func randImg() -> String {
        let imgNum = arc4random_uniform(22)+1
        var img:String
        
        if imgNum < 10 {
            img = "0" + String(imgNum)
        } else {
            img = String(imgNum)
        }
        
        return img
    }
}

