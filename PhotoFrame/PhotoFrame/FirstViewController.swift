//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Keunna Lee on 2020/02/03.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstDescription: UILabel!
  
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file,#line,#function,#column)

        self.firstLabel.text = "Lena's PhotoApp"
        self.firstLabel.textColor = .systemIndigo
        self.firstLabel.backgroundColor = .white
        self.firstLabel.alpha = 0.3
        self.firstLabel.adjustsFontSizeToFitWidth = true
        self.firstLabel.numberOfLines = 2
        self.firstLabel.font = .boldSystemFont(ofSize: 17.0)
        self.firstDescription.text = "hello world"
        self.firstDescription.backgroundColor = .systemIndigo
        self.firstDescription.textColor = .white
    }
}
