//
//  EGScrollView.swift
//  TabBar
//
//  Created by PD on 2017/12/21.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGScrollView: UIScrollView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect.init(x: 0, y: 0, width: rect.width, height: rect.height * 2)
        
        //设置渐变的主颜色
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor, UIColor.green.cgColor]
        
        
        //将gradientLayer作为子layer添加到主layer上
        self.layer.addSublayer(gradientLayer)
    }

}
