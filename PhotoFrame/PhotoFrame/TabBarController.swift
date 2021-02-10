//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 지북 on 2021/02/09.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file,#function,#line,#column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file,#function,#line,#column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file,#function,#line,#column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file,#function,#line,#column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file,#function,#line,#column)
    }
}

