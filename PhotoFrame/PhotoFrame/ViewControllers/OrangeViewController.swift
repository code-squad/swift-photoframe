//
//  OrangeViewController.swift
//  PhotoFrame
//
//  Created by Cory Kim on 2020/02/04.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Orange-viewDidLoad\n", #file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Orange-viewWillAppear\n", #file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Orange-viewDidAppear\n", #file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Orange-viewWillDisappear\n", #file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Orange-viewDidDisappear\n", #file, #line, #function, #column)
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        let skyViewController = self.storyboard?.instantiateViewController(identifier: "SkyVC") as! SkyViewController
        navigationController?.pushViewController(skyViewController, animated: true)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
