//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by joon-ho kil on 6/13/19.
//  Copyright © 2019 길준호. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    func getRandomImagePath() -> String {
        let imageFolder = "Demo Images/"
        let randNumber = Int.random(in: 1...22)
    
        return imageFolder+String(randNumber)+".jpg"
    }
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let imagePath = getRandomImagePath()
        self.photoImageView.image = UIImage(named: imagePath)
    }

    override func viewDidLoad() {
        let imagePath = getRandomImagePath()
        self.photoImageView.image = UIImage(named: imagePath)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

