//
//  PrepareViewController.swift
//  PhotoFrame
//
//  Created by 이동영 on 18/07/2019.
//  Copyright © 2019 부엉이. All rights reserved.
//

import UIKit

class PrepareViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.view.backgroundColor  = self.view.backgroundColor == .blue ? .white : .blue
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
