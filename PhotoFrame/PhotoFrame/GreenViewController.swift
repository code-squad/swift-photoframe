//
//  GreenViewController.swift
//  PhotoFrame
//
//  Created by delma on 04/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
