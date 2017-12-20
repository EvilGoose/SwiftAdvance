//
//  EGBasicViewController.swift
//  SwiftAdvanceDemos
//
//  Created by EG on 2017/11/30.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

let SCREEN_WIDTH = UIScreen.main.bounds.width
let SCREEN_HEIGHT = UIScreen.main.bounds.height

//返回随机颜色
extension UIColor {
    class var randomColor: UIColor {
        get {
            let red = CGFloat(arc4random()%256)/255.0
            let green = CGFloat(arc4random()%256)/255.0
            let blue = CGFloat(arc4random()%256)/255.0
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
}


//通过名称获取控制器
func CONTROLLER_FROM_STRING(_ childControllerName: String) -> UIViewController?{
    // 1.获取命名空间
    // 通过字典的键来取值,如果键名不存在,那么取出来的值有可能就为没值.所以通过字典取出的值的类型为AnyObject?
    guard let clsName = Bundle.main.infoDictionary!["CFBundleExecutable"] else {
        print("命名空间不存在")
        return nil
    }
    // 2.通过命名空间和类名转换成类
    let cls : AnyClass? = NSClassFromString((clsName as! String) + "." + childControllerName)
    
    // swift 中通过Class创建一个对象,必须告诉系统Class的类型
    guard let clsType = cls as? UIViewController.Type else {
        print("无法转换成UIViewController")
        return nil
    }
    // 3.通过Class创建对象
    let childController = clsType.init()
    
    return childController
}

class EGBasicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.randomColor
    }
}
