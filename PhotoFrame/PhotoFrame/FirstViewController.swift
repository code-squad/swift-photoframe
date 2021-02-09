//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Ador on 2021/02/08.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstdescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstLabel.text = "Soo의 사진액자"
        self.firstLabel.backgroundColor = .systemPurple
        self.firstLabel.alpha = 0.5
        self.firstLabel.textColor = .white
        
        self.firstdescription.text = "Photo by Soo"
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
        print("IBAction called")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare called")
    }
}

