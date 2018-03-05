//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by Eunjin Kim on 2018. 3. 5..
//  Copyright © 2018년 Eunjin Kim. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
