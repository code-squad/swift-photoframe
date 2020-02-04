//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by delma on 03/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var images:[String] = []
    @IBOutlet var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeImageName()
        self.photoImageView.image = UIImage(named: "01.jpg")
        self.photoImageView.contentMode = .scaleToFill

    }
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: images.randomElement()!)
    }
    
    func makeImageName(){
        for index in 1...22 {
            if index < 10 {
                images.append("0\(index).jpg")
            }else {
                images.append("\(index).jpg")
            }
        }
    }

}

