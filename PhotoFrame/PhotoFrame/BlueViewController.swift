//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by oingbong on 2018. 9. 14..
//  Copyright © 2018년 oingbong. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    @IBAction func closeButtonTouched(_ sender: Any) {
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }

}
