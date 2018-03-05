//
//  PinkViewController.swift
//  PhotoFrame
//
//  Created by yuaming on 05/03/2018.
//  Copyright © 2018 yuaming. All rights reserved.
//

import UIKit

class PinkViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextPageButton(_ sender: UIButton) {
        let blueViewController: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BlueViewController")
        
        self.present(blueViewController, animated: true, completion: ({
            print("Segue 호출 확인:)")
        }))
    }
}
