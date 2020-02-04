//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by kimdo2297 on 2020/02/04.
//  Copyright © 2020 Jason. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    
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
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
