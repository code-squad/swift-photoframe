//
//  EmeraldView.swift
//  PhotoFrame
//
//  Created by Elena on 14/03/2019.
//  Copyright © 2019 elena. All rights reserved.
//

import UIKit

class EmeraldView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(#file, #line, #function, #column)
    }
    @IBAction func dismissButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
