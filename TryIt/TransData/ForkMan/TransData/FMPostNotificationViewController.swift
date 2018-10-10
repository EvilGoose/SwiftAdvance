//
//  FMPostNotificationViewController.swift
//  ForkMan
//
//  Created by EG on 2017/11/20.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class FMPostNotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let noti = Notification.init(name:Notification.Name(rawValue: "TouchAndChange"))
    	NotificationCenter.default.post(noti)
    }

}
