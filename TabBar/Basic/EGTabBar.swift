//
//  EGTabBar.swift
//  TabBar
//
//  Created by PD on 2017/12/20.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

public class EGTabBarItem {
    private(set) var title: String = ""
    private(set) var selectedImageName: String = ""
    private(set) var unSelectedImageName: String = ""
    private(set) var selected: Bool = false
    private(set) var controller: UIViewController?
    
    private init() {

    }
    
    public init(title:String, controller:UIViewController, selectedImageName:String, unSelectedImageName:String, selected:Bool) {
        self.title = title
        self.controller = controller
        self.selectedImageName = selectedImageName
        self.unSelectedImageName = unSelectedImageName
        self.selected = selected
    }
}

public typealias EGTabBarSelectedCallback = (UIViewController, UInt8) -> Bool

class EGTabBar: UITabBar, UITabBarDelegate {
    
    //UITabBarDelegate
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
    }
    
}

