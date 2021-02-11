//
//  PhotoViewController.swift
//  PhotoFrame
//
//  Created by Song on 2021/02/11.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    
    override func viewDidLoad() {
        photoLabel.text = "Photo Album"
        super.viewDidLoad()
    }

    @IBAction func randomButtonTouched(_ sender: Any) {
    }
}
