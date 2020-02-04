//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by jinie on 2020/02/04.
//  Copyright © 2020 jinie. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstLabel.text = "jinie의 사진액자"
        firstDescription.text = "2020 jinie"
        firstDescription.textColor = .white
        firstDescription.backgroundColor = UIColor.black.withAlphaComponent(0.9)
        firstDescription.font = .systemFont(ofSize: 18)
    }

}
