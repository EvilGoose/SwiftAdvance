//
//  EGSecondViewController.swift
//  TabBar
//
//  Created by PD on 2017/12/20.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGSecondViewController: EGBasicViewController {

    let scrollView = EGScrollView.init(frame: SCREEN_BOUNDS)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.contentSize = CGSize.init(width: SCREEN_WIDTH, height: SCREEN_HEIGHT * 2)
        scrollView.isPagingEnabled = true
        scrollView.bounces = false;
        self.view = scrollView
        scrollView.delegate = self
        self.title = "Second"
    }
}

extension EGSecondViewController: UIScrollViewDelegate {
    
}
