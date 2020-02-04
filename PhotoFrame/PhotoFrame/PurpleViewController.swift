//
//  PurpleViewController.swift
//  PhotoFrame
//
//  Created by kimdo2297 on 2020/02/04.
//  Copyright © 2020 Jason. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
