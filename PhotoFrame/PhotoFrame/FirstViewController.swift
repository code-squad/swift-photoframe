//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Chaewan Park on 2020/02/03.
//  Copyright © 2020 Chaewan Park. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
        setupLabels()
    }
    
    private func setupLabels() {
        self.photoLabel.text = "하이디의 사진액자"
        self.photoLabel.font = .boldSystemFont(ofSize: 26)
        self.photoLabel.textColor = .systemGreen
        self.photoLabel.shadowColor = .lightGray
        self.photoLabel.shadowOffset = CGSize(width: 1, height: 1)
        
        self.photoDescription.text = "하이디의 사진액자의 설명"
        self.photoDescription.textColor = .darkGray
    }
}

