//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by delma on 04/02/2020.
//  Copyright © 2020 delma. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool){
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any){
        self.dismiss(animated: true, completion: nil)
    }
    

}
