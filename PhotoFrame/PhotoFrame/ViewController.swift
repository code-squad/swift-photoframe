//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 조중윤 on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        self.photoLabel.text = "JEJE의 사진액자"

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(false)
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(false)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(false)
        print(#file, #line, #function, #column)
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        let randomNumber = Int.random(in: 1...22)
        var randomNumberString: String {
            var myString = String(randomNumber)
            if myString.count == 1 {
                myString = "0\(myString)"
            }
            return myString
        }
        
        self.photoImageView.image = UIImage(named: "\(randomNumberString).jpg")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as UIViewController
        if segue.identifier == "YellowVC" {
            destinationVC.view.backgroundColor = UIColor.systemYellow
            destinationVC.view.alpha = 1
        } else if segue.identifier == "BlueVC" {
            destinationVC.view.backgroundColor = UIColor.systemBlue
            destinationVC.view.alpha = 1
        }
    }
}

