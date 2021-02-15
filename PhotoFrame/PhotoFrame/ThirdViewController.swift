//
//  ThirdViewController.swift
//  PhotoFrame
//
//  Created by Song on 2021/02/15.
//

import UIKit

class ThirdViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        let randomInt = Int.random(in: 1...22)
        let randomString = String(format: "%02d", randomInt)
        self.photoImageView.image = UIImage(named: "\(randomString).jpg")
    }
    
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
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
