//
//  EGSecondViewController.swift
//  SwifterProject
//
//  Created by EG on 2017/8/3.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGSecondViewController: EGBasicViewController {

     lazy var presentImage = {() -> UIImageView in
        let imageView = UIImageView.init(image: UIImage.init(named:"fly_bg"))
        imageView.sizeToFit()
        imageView.center = CGPoint(x: 100, y: 100)
        return imageView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initial()
    }

    func initial() {
        self.view.addSubview(self.presentImage())
    }
    



}
