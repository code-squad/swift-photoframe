//
//  PurpleViewController.swift
//  PhotoFrame
//
//  Created by CHOMINJI on 19/07/2019.
//  Copyright © 2019 cmindy. All rights reserved.
//

import UIKit

class PurpleViewController: UIViewController {
    
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
        let navyView = NavyView(frame: view.frame)
        navyView.tag = 1
        view.addSubview(navyView)
        let removeButton = UIButton(frame: CGRect(origin: navyView.center, size: CGSize(width: 200, height: 60)))
        removeButton.setTitle("remove navy view", for: .normal)
        removeButton.addTarget(self, action: #selector(removeButtonTouched(_:)), for: .touchUpInside)
        navyView.addSubview(removeButton)
    }
    
    @IBAction func closedButtonTouched(_ sender: Any) {
        print(#file, #line, #function, #column)
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func removeButtonTouched(_ sender: UIButton) {
        for subview in view.subviews {
            if subview.tag == 1 {
                subview.removeFromSuperview()
            }
        }
    }
}
