//
//  EGFirstViewController.swift
//  SwifterProject
//
//  Created by EG on 2017/8/3.
//  Copyright © 2017年 EGMade. All rights reserved.
//

import UIKit

class EGFirstViewController: EGBasicViewController {
    
    lazy var label = {() -> UILabel in
        let label = UILabel.init(frame: CGRect(x: 10, y: 140, width: 100, height: 20))
        label.backgroundColor = UIColor.yellow
        label.textAlignment = .center
        label.text = "Label~"
        return label
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
		self.initial()
    }
    
    func initial() {
        self.tabBarImage = "like_black"
        self.title = "First"
        
        let button = UIButton(frame: CGRect(x: 130, y: 100, width: 100, height: 40))
		button.setImage(UIImage.init(named: "like_activated"), for: .normal)
        button.setTitle("喜欢", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.addTarget(self, action:#selector(tap(_:)), for: .touchUpInside)
        button.tag = 1;
        self.view.addSubview(button)
        
        let button1 = self.addButton("嘻嘻", imageName: "like_black", frame:CGRect(x: 10, y: 100, width: 100, height: 40), action: #selector(tap(_:)))
        button1.tag = 10
        self.view.addSubview(button1)
    }
    
    
    func addButton(_ name: String, imageName: String, frame: CGRect, action: Selector) -> UIButton {
        let button = UIButton(frame: frame)
        button.setImage(UIImage.init(named: imageName), for: .normal)
        button.setTitle(name, for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: action, for: .touchUpInside)
        button.layer.borderWidth = 1;
        button.layer.cornerRadius = 5;
        button.layer.borderColor = UIColor.orange.cgColor
        button.clipsToBounds = true
        return button
    }
    
    
    func tap(_ sender: UIButton) {
        if sender.title(for: .normal) == "喜欢" {
            self.present(EGThirdViewController.init(), animated: true, completion: {
                
            })
        }else if sender.tag == 10 {
            print("helloworld")
            self.view.addSubview(self.label())
            
            //下面是个问题，求解
            UIView.animate(withDuration: 3.0, animations: {
                self.label().center = CGPoint(x: 200, y: 100)
                self.label().text = "干嘛"
            })
        }
    }
    
    
}
