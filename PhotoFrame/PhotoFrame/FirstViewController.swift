//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 지북 on 2021/02/09.
//

import Foundation
import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var photoLabel: UILabel!
    @IBOutlet var photoDiscription: UILabel!
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
        
        guard let newVC = self.storyboard?.instantiateViewController(identifier: "OrangeViewController") else { return }
        newVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        
        present(newVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file,#function,#line,#column)
        self.photoLabel.text = "Dumba의 사진 액자"
        self.photoDiscription.text = "안녕하세요"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(#file,#function,#line,#column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(#file,#function,#line,#column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print(#file,#function,#line,#column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print(#file,#function,#line,#column)
    }
}
