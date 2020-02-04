//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Cloud on 2020/02/03.
//  Copyright © 2020 Cloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet var photoLabel: UILabel!
    @IBOutlet var photoDescription: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        photoLabel.text = "GangWoon의 사진액자"
        photoDescription.text = "굿드"
        photoDescription.textAlignment = .left
        photoDescription.numberOfLines = 0
//        photoDescription.isHighlighted = true
        photoDescription.highlightedTextColor = .blue
    }
    
    // MARK: - Actions
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        photoLabel.textColor = .darkGray
        photoLabel.backgroundColor = .blue
        photoLabel.alpha = 0.5
    }
    
}

