//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by TaeHyeonLee on 2017. 12. 19..
//  Copyright © 2017년 ChocOZerO. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: String(format: "%02d.jpg", Int(arc4random_uniform(22) + 1)))
        self.photoImageView.contentMode = .scaleAspectFit
    }

}

