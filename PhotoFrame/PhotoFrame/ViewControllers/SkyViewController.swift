//
//  SkyViewController.swift
//  PhotoFrame
//
//  Created by Cory Kim on 2020/02/04.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import UIKit

class SkyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Sky-viewDidLoad\n", #file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Sky-viewWillAppear\n", #file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Sky-viewDidAppear\n", #file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Sky-viewWillDisappear\n", #file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Sky-viewDidDisappear\n", #file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
