//
//  ThirdViewController.swift
//  PhotoFrame
//
//  Created by Keunna Lee on 2020/02/04.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import UIKit

class IndigoViewController: UIViewController {
    
    
    @IBOutlet weak var closeButton: UIButton!
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
         print("IndigoViewController - viewWillAppear: ")
           print(#file, #line, #function, #column)
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("IndigoViewController - viewDidLoad: ")
        print(#file, #line, #function, #column)
        self.closeButton.setTitleColor(.white, for: .normal)
        self.closeButton.setTitle("[닫기]", for: .normal)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
    print("IndigoViewController - viewWillDisappear: ")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
         print("IndigoViewController - viewDidDisappear: ")
        print(#file, #line, #function, #column)
    }
}
