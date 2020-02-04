//
//  PurpleViewController.swift
//  PhotoFrame
//
//  Created by JW on 2020/02/04.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("2 viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("2 viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("2 viewDidAppear\n==================")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("2 viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("2 viewDidDisappear\n==================")
    }
    @IBAction func closeButtonTouched() {
        self.dismiss(animated: true, completion: nil)
    }

}
