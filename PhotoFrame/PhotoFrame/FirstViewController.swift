//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by Jun Ho JANG on 2021/02/08.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    @IBAction func nextButtoinTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = "Panther's image frame"
        self.firstLabel.textColor = .systemPink
        self.firstLabel.text = "Loaded by FirstViewController"
        self.firstLabel.textColor = .systemPink

        // Do any additional setup after loading the view.
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
