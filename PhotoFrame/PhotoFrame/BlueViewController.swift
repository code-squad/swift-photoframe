//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by 양준혁 on 2021/02/09.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
