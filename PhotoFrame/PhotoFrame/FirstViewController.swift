//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Issac on 2021/02/09.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "okstring의 사진액자"
        self.photoLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.photoLabel.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.photoLabel.alpha = 0.5
        self.photoLabel.font = photoLabel.font.withSize(40)
        
        self.firstDescription.text = "COMING SOON"
        self.firstDescription.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.firstDescription.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        self.firstDescription.alpha = 0.2
        self.firstDescription.font = firstDescription.font.withSize(20)
        
        let attributedString = NSMutableAttributedString(string: firstDescription.text ?? "")
        attributedString.addAttribute(.foregroundColor, value: UIColor.blue, range: (firstDescription.text! as NSString).range(of:"SOON"))
        firstDescription.attributedText = attributedString
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
