//
//  PinkViewController.swift
//  PhotoFrame
//
//  Created by 윤지영 on 06/12/2018.
//  Copyright © 2018 윤지영. All rights reserved.
//

import UIKit

class PinkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
