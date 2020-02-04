//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Cory Kim on 2020/02/03.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Main-viewDidLoad\n", #file, #line, #function, #column)
        
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Main-viewWillAppear\n", #file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Main-viewDidAppear\n", #file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Main-viewWillDisappear\n", #file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Main-viewDidDisappear\n", #file, #line, #function, #column)
    }
    
    private func setupUI() {
        photoLabel.text = " Cory의 사진액자 "
        photoLabel.textColor = .white
        photoLabel.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        photoDescription.font = UIFont.boldSystemFont(ofSize: 14)
        photoDescription.alpha = 0.7
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        photoLabel.textColor = .darkGray
        photoLabel.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        photoLabel.alpha = 0.9
        photoDescription.textColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        photoDescription.font = .systemFont(ofSize: 17)
        
        let orangeViewController = self.storyboard?.instantiateViewController(withIdentifier: "OrangeVC") as! OrangeViewController
        self.present(orangeViewController, animated: true, completion: nil)
    }
}
