//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 김성현 on 20/06/2019.
//  Copyright © 2019 김성현. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var photoView: UIImageView!
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        let imgNumber = Int.random(in: 1...22)
        var imgNumberStr = String(imgNumber)
        while imgNumberStr.count < 2 {
            imgNumberStr.insert("0", at: imgNumberStr.startIndex)
        }
        
        photoView.image = UIImage(named: "\(imgNumberStr).jpg")
    }
}

