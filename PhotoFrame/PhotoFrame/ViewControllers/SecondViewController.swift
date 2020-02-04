//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Cory Kim on 2020/02/03.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        var filename = ""
        let NUMBER_OF_PHOTOS = 22
        let randomInt = Int.random(in: 1...NUMBER_OF_PHOTOS)
        filename = randomInt < 10 ? "0\(randomInt)" : "\(randomInt)"
        photoImageView.image = UIImage(named: filename)
    }
}

