//
//  BrownViewController.swift
//  PhotoFrame
//
//  Created by Cloud on 2020/02/03.
//  Copyright © 2020 Cloud. All rights reserved.
//

import UIKit


class BrownViewController: UIViewController {
    
    //MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    // MARK: - Actions
    @IBAction func ClosedButtonTouched(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
