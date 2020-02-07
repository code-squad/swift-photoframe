//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by JW on 2020/02/04.
//  Copyright © 2020 JW. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var imageTitle: String = ""
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var selectButton: UIButton!
    
    var picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.setTitle("다음", for: .normal)
        selectButton.setTitle("선택", for: .normal)
        firstLabel.text = "Photo Album"
        
        picker.delegate = self
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        getRandomNumber()
        photoImageView.image = UIImage(named: "\(imageTitle).jpg")
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        openLibrary()
    }
    
    func getRandomNumber() {
        let randomNumber = Int.random(in: 1...22)
        imageTitle = String(format: "%02d", randomNumber)
    }
    
    func openLibrary() {
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
}


