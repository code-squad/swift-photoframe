//
//  BlackView.swift
//  PhotoFrame
//
//  Created by Elena on 14/03/2019.
//  Copyright © 2019 elena. All rights reserved.
//

import UIKit

class BlackView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(#file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        //dismiss(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("== ViewWillAppear ==")
        print(#file, #line, #function, #column)
    }
    override func viewDidAppear(_ animated: Bool) {
        print("== ViewDidApper ==")
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("== ViewWillDisappear ==")
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("== ViewdidDisAppear ==")
        print(#file, #line, #function, #column)
    }
}
