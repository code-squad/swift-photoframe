//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 윤동민 on 17/12/2018.
//  Copyright © 2018 윤동민. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.photoImageView.image = UIImage(named: "01.jpg")
        self.photoImageView.contentMode = .scaleAspectFit
    }


    @IBAction func nextImageTouched(_ sender: Any) {
        var photoNumber: [String] = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"]
        
        self.photoImageView.image = UIImage(named: "\(photoNumber[Int(arc4random_uniform(22))]).jpg")
    }
}

