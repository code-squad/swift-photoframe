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
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.isOpaque = true
        }
    }
    @IBOutlet var photoDescription: UILabel! {
        didSet {
            photoDescription.text = "굿드"
            photoDescription.textAlignment = .left
        }
    }
    
    // MARK: - Lifecycle
    
    // MARK: - Actions
    func RandomImage() -> UIImage {
        let random = Int.random(in: 1...22)
        let imageName = random < 10 ? "0" + String(random) : String(random)
        return UIImage(named: imageName) ?? UIImage()
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        imageView.image = RandomImage()
    }
}

