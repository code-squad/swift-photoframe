//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by user on 2021/02/09.
//

import UIKit

class SecondViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randNum = String(format: "%02d" ,Int.random(in: 1...22))
        let imageName = "Demo Images/\(randNum).jpg"
        self.photoImageView.contentMode = .scaleAspectFill
        self.photoImageView.image = UIImage(named: imageName)
    }
}

