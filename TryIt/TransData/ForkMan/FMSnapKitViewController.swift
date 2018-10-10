//
//  FMSnapKitViewController.swift
//  ForkMan
//
//  Created by EG on 2017/11/21.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit
import SnapKit

class FMSnapKitViewController: UIViewController {

    lazy var view1 = UIView()
    lazy var view2 = UIView()
    lazy var view3 = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view1.backgroundColor = UIColor.orange
        view2.backgroundColor = UIColor.blue
        view3.backgroundColor = UIColor.yellow

        self.view.addSubview(view1)
        self.view.addSubview(view2)
        self.view.addSubview(view3)

        view1.snp.makeConstraints { (make) in
            make.width.height.equalTo(100)
            make.center.equalTo(self.view)
        }
        
        view2.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 200, height: 200))
            make.top.equalTo(view1.snp.bottom)
            make.left.equalTo(view1.snp.right)
        }
        
        view3.snp.makeConstraints { (make) in
            make.size.equalTo(view2).multipliedBy(0.5)
            make.bottom.equalTo(view1.snp.top).offset(-20)
            make.right.equalTo(view1.snp.left).offset(-20)
        }
        
        
    }
 
}
