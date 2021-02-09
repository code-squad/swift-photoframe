//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by HOONHA CHOI on 2021/02/09.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var closeBtn: UIButton!
    
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
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
