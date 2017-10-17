//
//  PopVC.swift
//  PixelCity
//
//  Created by 김진선 on 2017. 10. 16..
//  Copyright © 2017년 김진선. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage:UIImage!
    
    func initData(forImage image:UIImage) {
        self.passedImage = image
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()

    }

    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }

    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
