//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by oingbong on 2018. 9. 11..
//  Copyright © 2018년 oingbong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        randomImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Second : " , #file , #line , #function , #column)
        randomImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomImage(){
        let number = random()
        self.photoImageView.image = UIImage(named: "DemoImages/\(number).jpg")
    }

    func random() -> String {
        let random = Int(arc4random_uniform(22) + 1)
        return String(format: "%02d" , random)
    }

}

