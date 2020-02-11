//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 한천희 on 2020/02/04.
//  Copyright © 2020 한천희. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func generateRandomUIImage() -> UIImage! {
        
        let randomNumber = Int.random(in: 1..<22)
        
        if randomNumber < 10 {
            return UIImage(named: "0\(randomNumber).jpg")
        }
        
        return UIImage(named: "\(randomNumber).jpg")
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {

        self.photoImageView.image = generateRandomUIImage()
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
    }
    
}
