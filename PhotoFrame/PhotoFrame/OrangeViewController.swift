//
//  OrangeViewController.swift
//  PhotoFrame
//
//  Created by Song on 2021/02/10.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
