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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
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

