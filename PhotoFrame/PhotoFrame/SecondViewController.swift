//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by yuaming on 2018. 1. 29..
//  Copyright © 2018년 yuaming. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        loadImages()
    }
    
    private func loadImages() {
        self.photoImage.image = UIImage(named: "1.jpg")
        self.photoImage.contentMode = .scaleAspectFit
    }
}
