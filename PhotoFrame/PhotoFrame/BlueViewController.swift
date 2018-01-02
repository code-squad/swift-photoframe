//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by 심 승민 on 2018. 1. 2..
//  Copyright © 2018년 심 승민. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }

    // 세그 없이 다음 화면 이동.
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        if let pvc = self.storyboard?.instantiateViewController(withIdentifier: "PVC") {
            self.present(pvc, animated: true, completion: nil)
        }
    }
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        //self.presentingViewController?.dismiss(animated: true, completion: nil)
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
