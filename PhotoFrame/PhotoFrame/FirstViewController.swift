//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 홍승표 on 2021/02/09.
//

import UIKit

class FirstViewController: UIViewController {

  @IBOutlet weak var firstLabel: UILabel!
  @IBOutlet weak var firstDescription: UILabel!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      self.firstLabel.text = "Tchaper의 사진액자"
      
      self.firstDescription.text = "helloWorld"
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
