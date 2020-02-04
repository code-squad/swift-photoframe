//
//  PurpleViewController.swift
//  PhotoFrame
//
//  Created by TTOzzi on 2020/02/04.
//  Copyright © 2020 TTOzzi. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        let currentView = UIStoryboard(name: "Main", bundle: nil)
        let nextView = currentView.instantiateViewController(identifier: "YellowVC")
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
