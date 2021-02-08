//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Song on 2021/02/08.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.firstLabel.text = "Song의 사진액자"
        self.firstLabel.textColor = UIColor.systemGray6
        self.firstLabel.backgroundColor = UIColor.systemGreen
        self.firstLabel.alpha = 0.9
        self.firstLabel.font = UIFont.systemFont(ofSize: 22.0)
        
        self.firstDescription.text = "Pictures of my memories"
        self.firstDescription.textColor = UIColor.darkGray
        self.firstDescription.font = UIFont.italicSystemFont(ofSize: 15.0)
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
