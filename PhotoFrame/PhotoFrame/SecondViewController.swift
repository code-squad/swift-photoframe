//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by JW on 2020/02/04.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var imageTitle: String = ""
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        nextButton.setTitle("다음", for: .normal)
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        getRandomNumber()
        self.photoImageView.image = UIImage(named: "\(imageTitle).jpg")
    }
    
    func getRandomNumber() {
        let randomNumber = Int.random(in: 1...22)
        imageTitle = String(format: "%02d", randomNumber)
    }
}

