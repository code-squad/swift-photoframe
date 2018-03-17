//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by YOUTH on 2018. 3. 9..
//  Copyright © 2018년 JINiOS. All rights reserved.
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

    private func generateRandomImageNumber() -> String {
        let randomNumber = Int(arc4random_uniform(21))+1
        return String(format: "%02d", randomNumber)
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: "DemoImages/\(self.generateRandomImageNumber()).jpg")
    }
    
}

