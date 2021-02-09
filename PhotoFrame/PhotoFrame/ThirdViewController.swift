//
//  ThirdViewController.swift
//  PhotoFrame
//
//  Created by Issac on 2021/02/09.
//

import UIKit

class ThirdViewController: UIViewController {
    var data: String?
    @IBOutlet weak var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text = data
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
