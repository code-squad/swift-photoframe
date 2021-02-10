//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 양준혁 on 2021/02/09.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func moveButtonTouched(_ sender: UIButton) {
        guard let bvc = self.storyboard?.instantiateViewController(identifier: "BlueVC") else {
            return
        }
        self.navigationController?.pushViewController(bvc, animated: true)
    }
    
}
