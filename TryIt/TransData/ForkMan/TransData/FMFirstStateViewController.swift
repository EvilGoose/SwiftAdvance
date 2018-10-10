//
//  FMFirstStateViewController.swift
//  ForkMan
//
//  Created by EG on 2017/11/20.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

typealias swiftBlock = (_ str: String) -> Void

class FMFirstStateViewController: UIViewController {
    
    var callBack: swiftBlock?
    
    func callBackBlock(block: @escaping (_ str: String) -> Void) {
        callBack = block
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if self.callBack != nil {
            self.callBack!("shadow");
        }
    }
}
