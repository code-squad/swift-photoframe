//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by HOONHA CHOI on 2021/02/09.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
}

extension BlueViewController {
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
