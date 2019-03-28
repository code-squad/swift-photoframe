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
        super.viewWillAppear(animated)
        // true로 하면 애니메이션을 이용하여 뷰를 불러온다. 애니메이션이은 창이 보여지는 방법을 의미
        // false로 하면 기본 형식으로 나타남
        print("이제나타날거야",#file, #line, #function, #column)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("뷰가만들어졌어",#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("뷰가사라질거야",#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("뷰가사라졌어",#file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
}
