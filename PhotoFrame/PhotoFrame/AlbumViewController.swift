//
//  AlbumViewController.swift
//  PhotoFrame
//
//  Created by 심영민 on 2021/02/12.
//

import UIKit


class AlbumViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 이거 해주니까 나오네??? ㅡㅡ
        // picker 의 대리자를 AlbumViewController 로하겠다.
        // 이걸 하려면 extension 해야한다.
        picker.delegate = self

        // Do any additional setup after loading the view.
    }

    
    @IBAction func plusButtonTouched(_ sender: Any) {
        
        // UIAlertController 버그가 있다고..?ㅡㅡ
        let alert = UIAlertController(title: "선택", message: "골라봐", preferredStyle: .actionSheet)

        let library = UIAlertAction(title: "사진앨범", style: .default) {
            (action) in self.openLibrary()
        }

        let camera = UIAlertAction(title: "카메라", style: .default) { (action) in
            self.openCamera()
        }

        let cancel = UIAlertAction(title: "취소", style: .default, handler: nil)

        alert.addAction(library)
        alert.addAction(camera)
        alert.addAction(cancel)

        present(alert, animated: false, completion: nil)
    }
    func openLibrary() {
        picker.sourceType = .photoLibrary
        present(picker, animated: false, completion: nil)
    }
    func openCamera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            picker.sourceType = .camera
            present(picker, animated: false, completion: nil)
        }
        else {
            print("camera is not available")
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
extension AlbumViewController: UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.imgView.image = image
            print(info)
           
        } else if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            self.imgView.image = image
            print(info)
            
        }
        dismiss(animated: true, completion: nil)
    }
}


