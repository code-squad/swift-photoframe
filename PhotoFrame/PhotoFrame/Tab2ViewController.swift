//
//  Tab2ViewController.swift
//  PhotoFrame
//
//  Created by 박정하 on 2021/02/11.
//

import UIKit

class Tab2ViewController: UIViewController {
    let picker = UIImagePickerController()
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        //        let url : String = "/Users/parkjungha/Documents/Xcode_Project/swift-photoframe/PhotoFrame/PhotoFrame/Photo/\(getRandomNumber()).jpg" //contentsOfFile:
        let url2 : String = "\(getRandomNumber()).jpg"
        
        self.photoImageView.image = UIImage(named: url2)
    }
    
    func openLibrary(){
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let alert = UIAlertController(title: "사진 선택", message: "원하는 사진 선택", preferredStyle: .actionSheet)
        let library =  UIAlertAction(title: "사진앨범", style: .default) { (action) in self.openLibrary()
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(library)
        alert.addAction(cancel)
    
        present(alert, animated: true, completion: nil)
    }
    
    func getRandomNumber() -> String {
        let randomNo: UInt32 = arc4random_uniform(22) + 1
        
        if randomNo < 10 {
            return "0\(randomNo)"
        }
        else{
            return String(randomNo)
        }
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

extension Tab2ViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            photoImageView.image = image
            print(info)
        }
        dismiss(animated: true, completion: nil)
    }
}
