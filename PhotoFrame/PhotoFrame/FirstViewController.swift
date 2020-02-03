//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Viet on 2020/02/03.
//  Copyright © 2020 Viet. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
        self.firstLabel.text = "Hello World!"
        self.firstDescription.text = "My First View"
    }
}

