//
//  ViewController.swift
//  Swifter
//
//  Created by EG on 2017/8/11.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var presentLabel: UILabel!
    
    var currentNumber = NSNumber()
    
    
    @IBAction func numberClickAction(_ sender: UIButton) {
    	self.presentLabel.text! += sender.currentTitle!
    }
    
    @IBAction func calculateClickAction(_ sender: UIButton) {
        switch sender.currentTitle! {
        case "Pi": break
        case "√": break
        case "AC": break
            
            
        default:
            break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.asdf
    }


}

