//
//  EGLabel.swift
//  SwiftAdvanceDemos
//
//  Created by 方伟易 on 2018/9/8.
//  Copyright © 2018年 EGMade. All rights reserved.
//

import UIKit

class EGLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    //Xib
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()

        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupUI() {
        
    }

}
