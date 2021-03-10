//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by jinseo park on 3/10/21.
//

import UIKit

class YellowViewController: UIViewController {
    
    @IBAction func closeBtnTouched(_ sender: Any) {
        
        /*Segue Action*/
        //self.dismiss(animated: true, completion: nil)
        
        /*Navigation Action*/
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nxtSceneNaviBtnTouched(_ sender: Any) {
        guard let newVC = self.storyboard?.instantiateViewController(identifier: "BlueViewController") else {
            return
        }
        
        self.navigationController?.pushViewController(newVC, animated: true)
        
    }
    
    
    @IBAction func nxtSceneBtnTouched(_ sender: Any) {
        guard let newVC = self.storyboard?.instantiateViewController(identifier: "BlueViewController") else {
            return
        }
        
        self.present(newVC, animated: true)       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(#file, #line, #function, #column)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
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
