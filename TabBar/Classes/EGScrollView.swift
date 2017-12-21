//
//  EGScrollView.swift
//  TabBar
//
//  Created by PD on 2017/12/21.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGScrollView: UIScrollView, CAAnimationDelegate {

    var colorSets = [[CGColor]]()
    var currentColorSet: Int!
    let gradientLayer = CAGradientLayer()

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        gradientLayer.frame = CGRect.init(x: 0, y: 0, width: rect.width, height: rect.height * 2)
        
        //设置渐变的主颜色
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor, UIColor.green.cgColor]

        
        //将gradientLayer作为子layer添加到主layer上
        self.layer.addSublayer(gradientLayer)
        
        self.createColorSets()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //控制循环
        if currentColorSet < colorSets.count - 1 {
            currentColorSet! += 1
        } else {
            currentColorSet = 0
        }

        gradientLayer.colors = colorSets[currentColorSet]

        let colorChangeAnimation = CABasicAnimation(keyPath: "colors")
        colorChangeAnimation.delegate = self
        colorChangeAnimation.duration = 2.0
        colorChangeAnimation.toValue = colorSets[currentColorSet]
        colorChangeAnimation.fillMode = kCAFillModeForwards
        colorChangeAnimation.isRemovedOnCompletion = false
        gradientLayer.add(colorChangeAnimation, forKey: "colorChange")
    }

    func createColorSets() {
        colorSets.append([UIColor.red.cgColor, UIColor.yellow.cgColor])
        colorSets.append([UIColor.yellow.cgColor, UIColor.green.cgColor])
        colorSets.append([UIColor.green.cgColor, UIColor.cyan.cgColor])
        colorSets.append([UIColor.black.cgColor, UIColor.lightGray.cgColor])
        colorSets.append([UIColor.blue.cgColor, UIColor.magenta.cgColor])
        colorSets.append([UIColor.magenta.cgColor, UIColor.red.cgColor])
        currentColorSet = 0
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        if flag {
            gradientLayer.colors = colorSets[currentColorSet]
        }
    }
 
}
