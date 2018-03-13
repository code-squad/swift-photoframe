//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by YOUTH on 2018. 3. 9..
//  Copyright © 2018년 JINiOS. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!

    @IBOutlet weak var nextButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "알린의 사진액자"
        self.photoLabel.textColor = UIColor.green
        self.photoLabel.font = photoLabel.font.withSize(50)
        self.firstDescription.text = "사진액자 firstDescription"
        let colorLiteral = #colorLiteral(red: 0.1380051349, green: 0.3703911386, blue: 1, alpha: 0.7430436644)
        self.firstDescription.textColor = colorLiteral
        self.nextButton.backgroundColor = UIColor.green
        print(#file, #line, #function, #column)
    }

    @IBAction func moveToNavy(_ sender: Any) {
        performSegue(withIdentifier: "toNavy", sender: self)
    }

    override func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.gray
        self.photoLabel.alpha = 0.5
        self.nextButton.backgroundColor = UIColor.gray
        self.nextButton.alpha = 0.5
    }

}

