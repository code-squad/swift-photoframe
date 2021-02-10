//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Ador on 2021/02/10.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let number = arc4random_uniform(22) + 1
        let string = String(format: "%02d", number)
        self.photoImageView.image = UIImage(named: "\(string).jpg")
    }

}
