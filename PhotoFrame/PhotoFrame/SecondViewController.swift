//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Lia on 2021/02/09.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        let randomNumber = Int.random(in: 1...22)
        let resultNumber = randomNumber < 10 ? "0\(randomNumber)" : "\(randomNumber)"
        self.photoImageView.image = UIImage(named: "\(resultNumber).jpg")
    }
    
}
