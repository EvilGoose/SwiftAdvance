//
//  EGTabBarController.swift
//  SwiftAdvanceDemos
//
//  Created by 方伟易 on 2018/9/7.
//  Copyright © 2018年 EGMade. All rights reserved.
//

import UIKit

class EGTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.configureChildControllers()
//        self.tabBar.delegate = self
    }
    
    func configureChildControllers() {
        let rootController = EGNavigationController.init(rootViewController: EGRootViewController.init())
        let firstController = EGNavigationController.init(rootViewController: EGFirstViewController.init())
        let secondController =  EGNavigationController.init(rootViewController: EGSecondViewController.init())
        let thirdController =  EGNavigationController.init(rootViewController: EGThirdViewController.init())
        
        rootController.tabBarItem = UITabBarItem.init(title: "List", image: UIImage.init(named:"list"), tag: 0)
        firstController.tabBarItem = UITabBarItem.init(title: "Print", image: UIImage.init(named:"print"), tag: 1)
        secondController.tabBarItem = UITabBarItem.init(title: "Save", image: UIImage.init(named:"save"), tag: 2)
        thirdController.tabBarItem = UITabBarItem.init(title: "Search", image: UIImage.init(named:"search"), tag: 3)

        self.addChildViewController(rootController)
        self.addChildViewController(firstController)
        self.addChildViewController(secondController)
        self.addChildViewController(thirdController)
    }
}

extension EGTabBarController {
    
}
