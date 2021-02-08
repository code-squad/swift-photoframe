//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 박혜원 on 2021/02/08.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let number = Int.random(in: 1...22)
        let numberStr = String(format: "%02d", number)
        self.photoImageView.image = UIImage(named: "/Users/parkhyewon/git/swift-photoframe/PhotoFrame/DemoImages/\(numberStr).jpg")
        self.photoImageView.contentMode.scaleAspectFill
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}
