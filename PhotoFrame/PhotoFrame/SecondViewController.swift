//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Keunna Lee on 2020/02/03.
//  Copyright © 2020 Keunna Lee. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
   
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var photoAlbumText: UILabel!
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoAlbumText.text = "Photo Album"
    }
    
    func generateRandomNumber()->Int{
    return Int(arc4random_uniform(21) + 01)
    }
}

