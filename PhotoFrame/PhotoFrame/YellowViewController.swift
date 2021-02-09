//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 심영민 on 2021/02/09.
//

import UIKit

class YellowViewController: UIViewController {
    
    // View Controller 생애 한번만 호출된다.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
    }
    // View 가 올라올 때 호출된다.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(#file, #line, #function, #column)
    }
    // View 가 올라오고 나서 호출된다.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(#file, #line, #function, #column)
    }
    
    // View 가 사라지고 나서 호출된다.
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print(#file, #line, #function, #column)
    }
    // View 가 사라질 때 호출된다.
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print(#file, #line, #function, #column)
    }

    @IBAction func closeButtonTouched(_ sender: Any) {
//        Segue 로 진행했을때는 닫기버튼 유효
//         self.dismiss(animated: true, completion: nil)
        // Navigation Controller 의 경우
        self.navigationController?.popViewController(animated: true)
    }
    // 화면전환
    @IBAction func wind(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }
    // unwind 화면닫기
    @IBAction func unWind(_ segue: UIStoryboardSegue) {
        
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
