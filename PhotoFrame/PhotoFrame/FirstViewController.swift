//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by yuaming on 2018. 1. 29..
//  Copyright © 2018년 yuaming. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        
        loadPhotoLabelDefaultProperty()
        self.photoLabel.text = "AMING's Photoframe"
        self.firstDescription.text = "감자, 웅의 예쁜 사진이 있습니다 :)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()   
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.white
        self.photoLabel.backgroundColor = UIColor.black
    }
    
    @IBAction func nextButtonTouchDown(_ sender: Any) {
        loadPhotoLabelDefaultProperty()
    }
    
    func loadPhotoLabelDefaultProperty() {
        self.photoLabel.textColor = UIColor.black
        self.photoLabel.font = UIFont.boldSystemFont(ofSize: 39)
    }
}

