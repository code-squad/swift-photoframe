//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 박혜원 on 2021/02/08.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.photoLabel.text = "Elly's PhotoFrame"
        self.firstDescription.text = "뭘 보여줘야 할까???"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
        
        guard let yellowVC = self.storyboard?.instantiateViewController(identifier: "yellowVC") else { return }
        self.navigationController?.pushViewController(yellowVC, animated: true)
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
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
