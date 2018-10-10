//
//  EGRootViewController.swift
//  SwifterProject
//
//  Created by EG on 2017/7/25.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGRootViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
        let  navigationController = EGNavigationController.init(rootViewController: EGFirstViewController.init())
        
        let  navigationController2 = EGNavigationController.init(rootViewController:
            EGSecondViewController.init())
 
        self.addChildViewController(navigationController)
        self.addChildViewController(navigationController2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 

}
