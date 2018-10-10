//
//  FMDelegateViewController.swift
//  ForkMan
//
//  Created by EG on 2017/11/20.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

protocol FMDelegateViewControllerProtocol : NSObjectProtocol {
    func touchedMe (_ controller: FMDelegateViewController)

}

class FMDelegateViewController: UIViewController {
 	weak open var delegate : FMDelegateViewControllerProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if self.delegate != nil {
            self.delegate?.touchedMe(self);
        }
    }

}
