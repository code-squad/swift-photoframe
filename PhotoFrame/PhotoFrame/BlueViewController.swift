//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by YOUTH on 2018. 3. 13..
//  Copyright © 2018년 JINiOS. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }

    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    // 스토리보드에서 segue이용하지 않고 생성
    @IBAction func newNextButtonTouched(_ sender: Any) {
        if let navyVC = self.storyboard?.instantiateViewController(withIdentifier: "navyView") {
        self.navigationController?.pushViewController(navyVC, animated: true)
        }
    }

    @IBAction func closeButtonA(_ sender: Any) {
        self.dismiss(animated: true, completion: {(print("closeButtonA BLUE View"))})
    }

    @IBAction func closeButtonB(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: {(print("closeButtonB BLUE View"))})
    }

    @IBAction func nextButtonA(_ sender: Any) {
        if let navyVC = self.storyboard?.instantiateViewController(withIdentifier: "navyView") {
            self.present(navyVC, animated: true, completion: {(print("blue to Navy"))})
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
