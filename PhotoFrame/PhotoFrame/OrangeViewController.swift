//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 지북 on 2021/02/10.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(#file,#function,#line,#column)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // ViewController 코드로 호출
    @IBAction func nextButtonTouched(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "GreenViewController") else { return }
        nextVC.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        self.present(nextVC, animated: true)
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
