//
//  SelectSegueViewController.swift
//  PhotoFrame
//
//  Created by 이동영 on 18/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import UIKit

class SelectSegueViewController: UIViewController {

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

    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
        
    }

}
