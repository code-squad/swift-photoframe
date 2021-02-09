//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Jihun Kim on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        
        self.photoLabel.text = "Pico's PhotoApp"
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
    }
}

