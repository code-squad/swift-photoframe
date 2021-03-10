//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by jinseo park on 3/10/21.
//

import UIKit

class YellowViewController: UIViewController {
    
    @IBAction func closeBtnTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func nxtSceneBtnTouched(_ sender: Any) {
        
        guard let newVC = self.storyboard?.instantiateViewController(identifier: "blueViewController") else {
            return
        }
        
        self.present(newVC, animated: true)       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
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
