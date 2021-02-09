//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by zombietux on 2021/02/09.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad", #file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear", #file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear", #file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear", #file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
