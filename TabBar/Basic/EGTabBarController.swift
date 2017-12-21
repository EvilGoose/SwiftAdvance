//
//  EGTabBarController.swift
//  TabBar
//
//  Created by PD on 2017/12/20.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.addChildControllers()
    }
    
    
    func addChildControllers() {
        self.tabBar.tintAdjustmentMode = .dimmed
        self.tabBar.isTranslucent = false
        self.tabBar.tintColor = UIColor.blue

        
        let firstVC =
            EGBasicNavigationController.init(rootViewController: EGFirstViewController.init())
        firstVC.tabBarItem.image = UIImage.init(named: "First")?.withRenderingMode(.alwaysOriginal)
        firstVC.tabBarItem.selectedImage = UIImage.init(named: "First_selected")?.withRenderingMode(.alwaysOriginal)
        firstVC.tabBarItem.title = "First"
        firstVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.orange], for: .selected)
        
        
        let secondVC =
            EGBasicNavigationController.init(rootViewController: EGSecondViewController.init())
        secondVC.tabBarItem.image = UIImage.init(named: "Second")?.withRenderingMode(.alwaysOriginal)
        secondVC.tabBarItem.selectedImage = UIImage.init(named: "Second_selected")?.withRenderingMode(.alwaysOriginal)
        secondVC.tabBarItem.title = "Second"
        secondVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.orange], for: .selected)

        let thirdVC =
            EGBasicNavigationController.init(rootViewController: EGThirdViewController.init())
        thirdVC.tabBarItem.image = UIImage.init(named: "Third")?.withRenderingMode(.alwaysOriginal)
        thirdVC.tabBarItem.selectedImage = UIImage.init(named: "Third_selected")?.withRenderingMode(.alwaysOriginal)
        thirdVC.tabBarItem.title = "Third"
        thirdVC.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.orange], for: .selected)

        self.addChildViewController(firstVC)
        self.addChildViewController(secondVC)
        self.addChildViewController(thirdVC)

    }
}
