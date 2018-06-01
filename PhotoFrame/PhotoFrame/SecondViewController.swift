//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by moon on 2018. 5. 24..
//  Copyright © 2018년 moon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    private let numberOfImages: UInt32 = 22
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        
    }
    
    private func generateRandomNumber() -> Int {
        return Int(arc4random_uniform(self.numberOfImages) + 1)
    }
    
}

