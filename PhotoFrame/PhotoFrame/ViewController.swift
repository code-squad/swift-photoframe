//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Jihun Kim on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    

    override func viewDidLoad() {
        self.photoLabel.text = "Pico's Photo App"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

