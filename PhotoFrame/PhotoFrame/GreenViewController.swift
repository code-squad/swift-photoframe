//
//  GreenViewController.swift
//  PhotoFrame
//
//  Created by 지북 on 2021/02/10.
//

import UIKit

class GreenViewController: UIViewController {

    
    @IBAction func closeButtonTouched(_ sender: Any) {
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file,#function,#line,#column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(#file,#function,#line,#column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(#file,#function,#line,#column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print(#file,#function,#line,#column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print(#file,#function,#line,#column)
    }
}
