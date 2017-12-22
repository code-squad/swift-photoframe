//
//  RedViewController.swift
//  PhotoFrame
//
//  Created by Mrlee on 2017. 12. 22..
//  Copyright © 2017년 Napster. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    @IBAction func nextSceneButton(_ sender: Any) {
        let storyBoard = self.storyboard!
        let nextView = storyBoard.instantiateViewController(withIdentifier: "greenView")
        present(nextView, animated: true, completion: nil)
    }
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
