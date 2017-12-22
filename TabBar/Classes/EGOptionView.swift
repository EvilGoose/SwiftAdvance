//
//  EGOptionView.swift
//  TabBar
//
//  Created by PD on 2017/12/22.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGOptionView: UIView {
    let optionsArray: [String] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initOption(array: self.optionsArray)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //初始化
    func initOption(array:Array<String>) {
        
        if array.count == 0 {
            return
        }
        
        let width = SCREEN_WIDTH / CGFloat(array.count)

        for title in array {
            let button = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: width, height: self.bounds.height))
            button.setTitle(title, for: .normal)
            self.addSubview(button)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for item in self.subviews {
            
        }
    }

    
    //
}
