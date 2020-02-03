//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Cory Kim on 2020/02/03.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        photoLabel.text = " Cory의 사진액자 "
        photoLabel.textColor = .white
        photoLabel.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        photoDescription.font = UIFont.boldSystemFont(ofSize: 14)
        photoDescription.alpha = 0.7
    }
}
