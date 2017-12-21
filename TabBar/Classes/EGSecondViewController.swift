//
//  EGSecondViewController.swift
//  TabBar
//
//  Created by PD on 2017/12/20.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGSecondViewController: EGBasicViewController {

    let scrollView = UIScrollView.init(frame: SCREEN_BOUNDS)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view = scrollView
        scrollView.delegate = self
        self.scrollView.backgroundColor = UIColor.randomColor
        self.title = "Second"
    }
}

extension EGSecondViewController: UIScrollViewDelegate {
    
}
