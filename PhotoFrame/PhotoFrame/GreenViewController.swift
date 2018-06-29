//
//  GreenViewController.swift
//  PhotoFrame
//
//  Created by Yoda Codd on 2018. 6. 29..
//  Copyright © 2018년 Drake. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    override func    viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }

    @IBAction func NextViewProgrammaticllay(_ sender: Any) {
        let ThirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController")
        ThirdViewController?.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        self.present(ThirdViewController!, animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
