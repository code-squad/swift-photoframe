//
//  FourthViewController.swift
//  PhotoFrame
//
//  Created by Keunna Lee on 2020/02/04.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    
    @IBAction func closeButtonTouched(_ sender: Any) {
       self.navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
    print("PurpleViewController - viewWillAppear: ")
           print(#file, #line, #function, #column)
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    print("PurpleViewController - viewDidLoad: ")
               print(#file, #line, #function, #column)
        self.closeButton.setTitleColor(.white, for: .normal)
        self.closeButton.setTitle("[닫기]", for: .normal)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("PurpleViewController - viewWillDisappear: ")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("PurpleViewController - viewDidDisappear: ")
        print(#file, #line, #function, #column)
    }
}
