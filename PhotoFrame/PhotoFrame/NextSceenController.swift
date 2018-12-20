//
//  NextSceenController.swift
//  PhotoFrame
//
//  Created by 윤동민 on 18/12/2018.
//  Copyright © 2018 윤동민. All rights reserved.
//

import UIKit

class NextSceenController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func exitSceen(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    // MARK: - Table view data source
    
    // 다음 화면으로 전환하기 위한 코드 ( Not use Segue )
//    @IBAction func moveToNextSceen(_ sender: Any) {
//        let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "YellowViewController")
//        ViewController?.modalTransitionStyle = UIModalTransitionStyle.coverVertical
//        self.present(ViewController!, animated: true, completion: nil)
//    }
    
}
