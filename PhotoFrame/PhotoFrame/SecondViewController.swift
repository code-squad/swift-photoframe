//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by jinseo park on 3/10/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.photoImgView.image = UIImage(named: "01.jpg")
        self.photoImgView.contentMode = .scaleToFill
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeImgBtnTouched(_ sender: Any) {
        let randInt = Int.random(in: 1...22)
        
        //Path가 Stirng이기에 10 이하 숫자(n)는 0n.jpg 이며 정확한 str를 위해 if-else 구문 사용
        if randInt < 10 {
            self.photoImgView.image =
                UIImage(named: "0"+String(randInt)+".jpg")
        }else {
            self.photoImgView.image =
                UIImage(named: String(randInt)+".jpg")
        }
        

        /* contentMode의 scaleToFill을 이용해서 사이즈를 조정한다.*/
        self.photoImgView.contentMode = .scaleToFill
        

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
