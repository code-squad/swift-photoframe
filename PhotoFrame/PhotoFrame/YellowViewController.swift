//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by moon on 2018. 5. 28..
//  Copyright © 2018년 moon. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
    }

    //MARK: UIViewController life cycle methods
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        guard let blueVC = self.storyboard?.instantiateViewController(withIdentifier: "BlueVC") else {
            return
        }
        self.navigationController?.pushViewController(blueVC, animated: true)
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
