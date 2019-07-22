//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 이동영 on 08/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
         print("\(type(of: self))", #function)
        // Do any additional setup after loading the view.
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
    
    override func viewDidDisappear (_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(type(of: self))", #function)
    }
    
    
    @IBAction func touchUpPresentCurrentContext(_ sender: UIButton) {
        guard let storyboard = self.storyboard else {
            return
        }
        let destination = storyboard.instantiateViewController(withIdentifier: "NeonViewController")
        destination.modalPresentationStyle = .currentContext
        self.present(destination, animated: true)
    }
    
    @IBAction func touchUpPresentOverCurrentContext(_ sender: UIButton) {
        guard let storyboard = self.storyboard else {
            return
        }
        let destination = storyboard.instantiateViewController(withIdentifier: "NeonViewController")
        destination.modalPresentationStyle = .overCurrentContext
        self.present(destination, animated: true)
    }
    
    @IBAction func touchUpLoadViewFromXib(_ sender: Any) {
        let xibView = XibView(frame: self.view.frame)
        self.view.addSubview(xibView)
    }
}

