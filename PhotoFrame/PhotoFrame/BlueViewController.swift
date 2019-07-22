//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by CHOMINJI on 19/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {
    override func loadView() {
        super.loadView()
        print(#file, #line, #function, #column)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        print(#file, #line, #function, #column)
        guard let purpleVC = storyboard?.instantiateViewController(withIdentifier:  "PurpleViewController") else { return }
        purpleVC.modalPresentationStyle = .fullScreen
        present(purpleVC, animated: true, completion: nil)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
