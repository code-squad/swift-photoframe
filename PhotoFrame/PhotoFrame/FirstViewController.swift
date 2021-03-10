//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by jinseo park on 3/9/21.
//

import UIKit

class FirstViewController : UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    
    @IBAction func nextBtnTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor =
            UIColor.yellow
        self.photoLabel.alpha = 0.5
        
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.photoLabel.text = "Jackson's PhotoAlbum"
        print("tab1 view")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
    
}
