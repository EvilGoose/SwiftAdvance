//
//  EGNavigationController.swift
//  SwiftAdvanceDemos
//
//  Created by 方伟易 on 2018/9/7.
//  Copyright © 2018年 EGMade. All rights reserved. 
//

import UIKit

class EGNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @objc func backClick() {
        self.popViewController(animated:true)
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        if self.viewControllers.count > 1 {
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "formalPage"), style: .done, target: self, action: #selector(backClick))
            viewController.tabBarController?.tabBar.isHidden = true
        }
    }
    
    override func popViewController(animated: Bool) -> UIViewController? {
        if self.viewControllers.count == 2 {
            self.tabBarController?.tabBar.isHidden = false
        }
        return  super.popViewController(animated: animated)
    }

}
