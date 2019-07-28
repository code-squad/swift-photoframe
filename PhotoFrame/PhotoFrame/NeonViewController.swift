//
//  NeonViewController.swift
//  PhotoFrame
//
//  Created by 이동영 on 19/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import UIKit

class NeonViewController: UIViewController {
    
    // MARK: LifeCycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(type(of: self))", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(type(of: self))", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(type(of: self))", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(type(of: self))", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(type(of: self))", #function)
    }
    
    // MARK: IBAction
    @IBAction func exit(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
