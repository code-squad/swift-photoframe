//
//  MyViewController.swift
//  PhotoFrame
//
//  Created by 김지나 on 25/03/2019.
//  Copyright © 2019 김지나. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        print("이제나타날거야",#file, #line, #function, #column)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("뷰가만들어졌어",#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("뷰가사라질거야",#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("뷰가사라졌어",#file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
