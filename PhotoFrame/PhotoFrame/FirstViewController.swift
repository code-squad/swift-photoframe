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
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        photoLabel.textColor = .darkGray
        photoLabel.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        photoLabel.alpha = 0.9
        photoDescription.textColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        photoDescription.font = .systemFont(ofSize: 17)
    }
}
