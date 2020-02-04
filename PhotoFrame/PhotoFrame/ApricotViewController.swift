//
//  ApricotViewController.swift
//  PhotoFrame
//
//  Created by JW on 2020/02/04.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit

class ApricotViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("3 viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("3 viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("3 viewDidAppear\n==================")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("3 viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("3 viewDidDisappear\n==================")
    }
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
