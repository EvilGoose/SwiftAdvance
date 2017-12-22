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

        self.view.backgroundColor = UIColor.randomColor
        // Do any additional setup after loading the view.
        scrollView.contentSize = CGSize.init(width: SCREEN_WIDTH * 3, height: SCREEN_HEIGHT)
        scrollView.isPagingEnabled = true
        scrollView.bounces = false
        self.view = scrollView
        scrollView.delegate = self
        scrollView.egDelegate = self
        self.title = "Second"
    }
}

extension EGSecondViewController: UIScrollViewDelegate, EGScrollViewDelegate {
    func didTapScrollView(scrollView: EGScrollView) {
        print("touches the scroll view")
    }
    
 
}
