//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 심 승민 on 2017. 12. 27..
//  Copyright © 2017년 심 승민. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    private var imageFileNames: [String]

    required init?(coder aDecoder: NSCoder) {
        self.imageFileNames = []
        super.init(coder: aDecoder)
        self.imageFileNames = setJPGImageFileNames()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog(#file, #line, #function, #column)
        showRandomImage()
        self.photoImageView.contentMode = .scaleAspectFit
    }

    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        showRandomImage()
    }

    private func showRandomImage() {
        let randomIndex = getRandomIndex(self.imageFileNames.count)
        let randomImage = generateUIImage(randomIndex)
        self.photoImageView.image = randomImage
    }

    private func generateUIImage(_ fileIndex: Int) -> UIImage? {
        return UIImage(named: self.imageFileNames[fileIndex])
    }

    private func getRandomIndex(_ maxNumber: Int) -> Int {
        return Int(arc4random_uniform(UInt32(maxNumber)))
    }

    private func setJPGImageFileNames() -> [String] {
        guard let path = Bundle.main.resourcePath else { return [] }
        let fileManager = FileManager.default
        var jpgImageFiles: [String] = []
        if let fileNames = try? fileManager.contentsOfDirectory(atPath: path) {
            // 폴더명은 따로 붙여줄 필요 없음.
            jpgImageFiles = fileNames.filter({ $0.hasSuffix(".jpg") })
        }
        return jpgImageFiles
    }
}
