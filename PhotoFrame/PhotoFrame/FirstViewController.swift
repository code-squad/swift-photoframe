//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 양준혁 on 2021/02/09.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.textColor = .red
        self.photoLabel.backgroundColor = .blue
        self.firstDescription.text = "Zeke의 사진액자"
        self.firstDescription.adjustsFontSizeToFitWidth = true
        self.firstDescription.textAlignment = .center

    }
    @IBOutlet var photoLabel: UILabel!
    @IBOutlet var firstDescription: UILabel!
    

}
