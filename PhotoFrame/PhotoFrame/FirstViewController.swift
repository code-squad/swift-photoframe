//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Elena on 11/03/2019.
//  Copyright © 2019 elena. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.textColor = .blue
        self.photoLabel.font = UIFont.systemFont(ofSize: 50)
        self.photoLabel.alpha = 0.9
        self.photoLabel.text = "Cony의 사진액자"
        
        self.firstDescription.textColor = .black
        self.firstDescription.backgroundColor = .yellow
        self.firstDescription.font = UIFont.systemFont(ofSize: 15)
        self.firstDescription.alpha = 0.6
        self.firstDescription.text = "Cony"
        
        print(#file, #line, #function, #column)
    }


}
