//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Song on 2021/02/09.
//

import UIKit

class WhiteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        self.photoLabel.text = "Lollo's Photo"
        self.photoLabel.adjustsFontSizeToFitWidth = true
        self.photoLabel.shadowColor = .lightGray
        self.photoLabel.shadowOffset = CGSize(width: 0.5, height: 0.5)
        
        self.photoDescription.text = "착한 사람 눈에만 보이는 사진입니다"
        self.photoDescription.adjustsFontSizeToFitWidth = true
        self.photoDescription.textColor = .white
        self.photoDescription.backgroundColor = .black
        self.photoDescription.alpha = 0.6
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
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    @IBAction func nextButtonTouchedUpInside(_ sender: Any) {
        self.photoLabel.textColor = .black
        self.photoLabel.backgroundColor = .clear
        self.photoLabel.alpha = 1
    }
    
    @IBAction func nextButtonTouchedDown(_ sender: Any) {
        self.photoLabel.textColor = .purple
        self.photoLabel.backgroundColor = .lightGray
        self.photoLabel.alpha = 0.5
    }
}

