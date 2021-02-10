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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(#file,#function,#line,#column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(#file,#function,#line,#column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print(#file,#function,#line,#column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print(#file,#function,#line,#column)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)

    }
    
    // ViewController 코드로 호출
    @IBAction func nextButtonTouched(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "GreenViewController") else { return }
        // ViewController 호출 코드로 구현 ( Segue X )
//        nextVC.modalTransitionStyle = UIModalTransitionStyle.coverVertical
//        self.present(nextVC, animated: true)

        // navigationCotroller push 코드로 구현 ( Segue X )
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    

}
